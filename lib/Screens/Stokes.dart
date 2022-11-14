

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fulfill_karo/pages/layout/constant.dart';


class Stokes extends StatefulWidget {
  const Stokes({super.key});

  @override
  State<Stokes> createState() => _StokesState();
}

class _StokesState extends State<Stokes> {
  FirebaseAuth fauth=FirebaseAuth.instance;
  final fstore=FirebaseFirestore.instance.collection("Users");
  
  @override
   String?userEmail;
   int? sold;
   int?remaining;
   
  void initState() {
    // TODO: implement initState
    
    userEmail=fauth.currentUser!.email;
    print(userEmail);
    super.initState();
  }
  final Stream <QuerySnapshot> Stoke=FirebaseFirestore.instance.collection("Users").snapshots();
  
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("Users").doc(userEmail).collection("Products").snapshots(),
      builder: ( BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot) {
        if(snapshot.hasError){
          print("Something went Wrong");
        }if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child:  CircularProgressIndicator());
        }
        final List stoke=[

        ];
  snapshot.data!.docs.map((DocumentSnapshot document){  
    Map a=document.data()as Map<String,dynamic>;
    stoke.add(a);
    
  }).toList();
  
  return  Scaffold(
      body: Container(
        child:Row(  children: [
          Mydrawer.myDrawer(context),
          Expanded(
            child: 
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: Text("Product Detials",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
         
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(border: TableBorder.all(),
            

              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
              TableRow(
                children: [TableCell(child: Container(color: Colors.grey[400],child: Text("Product Name", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),)),
                            TableCell(child: Container(color: Colors.grey[400],child: Text("Product SKU", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),)),
                            TableCell(child: Container(color: Colors.grey[400],child: Text("Given Quantity ", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),)),
                            TableCell(child: Container(color: Colors.grey[400],child: Text("Total Sold", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),)),
                            TableCell(child: Container(color: Colors.grey[400],child: Text("Remaining", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),))]
              ),
              
              for(int i=0; i<stoke.length;i++)...[
               TableRow(
                
                children: [TableCell(child: Container(child: Text(stoke[i]['PRoduct Name']),)),
                            TableCell(child: Container(child: Text(stoke[i]['Product SKU']),)),
                            TableCell(child: Container(child: Text(stoke[i]['Quantity Given']),)),
                            TableCell(child: Container(child: Text(stoke[i]['Quantity sold']),)),
                            TableCell(child: Container(child: Text("Remaining"),))]
              )
              

            ]]),
          )
          ,])
        )])
        ));
      
      });
     
        
           
            
          
        
      
    
  }

}