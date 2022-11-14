
import 'package:flutter/material.dart';
import 'package:fulfill_karo/pages/layout/constant.dart';


class NCI extends StatefulWidget {
  const NCI({Key? key}) : super(key: key);

  @override
  State<NCI> createState() => _NCIState();
}

class _NCIState extends State<NCI> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Row(
          children: [Mydrawer.myDrawer(context),
        //    
           Expanded(
             child: Container(height: double.infinity,width: double.infinity,
                     
              decoration: BoxDecoration(color: Colors.grey[400]),
              child:SingleChildScrollView(
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(height: 370,width: 900,
                    decoration:BoxDecoration(color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ) 
                      ,child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(width: 900,decoration:BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)
                    ), 
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("NCI Management >> List Of NCIs"),
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(onPressed: (() {
                                  
                                }), child: const Text("Export")),
                              )],)),
                            ),const SizedBox(height: 10,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [Text("Consignment #",style: TextStyle(fontSize: 15),),Text("(Comma Seprated",style: TextStyle(fontSize: 15))],),const SizedBox(height: 10,),
                            Container(decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                            child: const TextField(decoration: InputDecoration(hintText: 'Consignment No',
                             
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              ),),),const SizedBox(height: 10,),
                           
                             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,children: 
                                       [const Text("Consignment #"),const SizedBox(height: 10,),
                                       Container(width: 250,height: 30,decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                            child: const TextField(decoration: InputDecoration(hintText: 'Consignment No ',
                             
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              ),),),const SizedBox(height: 10,),
                              const Text("From Date"),const SizedBox(height: 10,),
                              Container(width: 250,height: 30,decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                            child: const TextField(decoration: InputDecoration(hintText: 'Date From',
                             
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              ),),)
                                       ],),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,children: 
                                       [const Text("Desitination City"),const SizedBox(height: 10,),
                                       Container(width: 250,height: 30,decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                            child: const TextField(decoration: InputDecoration(hintText: 'Select Designation',
                             
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              ),),),const SizedBox(height: 10,),
                              const Text("To Data"),const SizedBox(height: 10,),
                              Container(width: 250,height: 30,decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                            child: const TextField(decoration: InputDecoration(hintText: 'Date to',
                             
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              ),),)
                                       ],),const SizedBox(height: 10,),
                             Column(children: [
                              const Text("Customer"),const SizedBox(height: 10,),
                              Container(width: 250,height: 30,decoration: BoxDecoration(border: Border.all(),color: Colors.white),
                            child: const TextField(decoration: InputDecoration(hintText: 'Select Customer',
                             
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              ),),)
                              
                             ],) ,
                           
                          ],
                        ),const SizedBox(height: 20,),
                        Center(child:ElevatedButton(onPressed: () {
                             
                           },child: const Text("Search"),) ,)
                  ],
                ),
                      ),
              ),
                ]),
                ))),
           ),
        
          
        ]));
  }
}