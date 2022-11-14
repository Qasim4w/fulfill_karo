



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fulfill_karo/Screens/Consignment_Tracking.dart';
import 'package:fulfill_karo/Screens/Stokes.dart';
import 'package:fulfill_karo/Screens/addProduct.dart';
import 'package:fulfill_karo/Screens/bookingMangement.dart';
import 'package:fulfill_karo/Screens/homescreen.dart';
import 'package:fulfill_karo/Screens/login.dart';

import '../../Screens/nci.dart';


class Mydrawer{
  static myDrawer(BuildContext context) {
return Drawer(backgroundColor: Colors.grey[300],
        child: SingleChildScrollView(
          child: Column(children: [
          ListTile(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>const HomeScreen()));
          }, leading:const Icon(Icons.dashboard),title: const Text("DashBoard"),),
          ListTile(onTap: (){},leading:const Icon(Icons.account_circle),title: const Text("Account")),
          ListTile(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>NCI()));
              },leading: const Icon(Icons.account_circle),title: const Text("NCI")),
              
          ListTile(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>BookingManagement()));
          },leading:const Icon(Icons.manage_history_outlined),title: const Text("Manual Booking")),
          ListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>Stokes()));
          },leading:const Icon(Icons.insert_emoticon_sharp),title: const Text("Stokes")),
          ListTile(onTap: (){},leading:const  Icon(Icons.add ),title:const Text("Pickup Request")),
          ListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>AddProduct()));
          },leading:const  Icon(Icons.add ),title:const Text("Add Product")),
          ListTile(onTap: (){},leading:const Icon(Icons.label),title: const Text("Adress Label")),
          ListTile(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>ConsignmentTracking()));
          },leading:const  Icon(Icons.search),title: const Text("Track Consigment")),
          ListTile(onTap: (){},leading:const Icon(Icons.bus_alert),title: const Text("PickUp Load Sheet")),
          ListTile(onTap: (){},leading:const Icon(Icons.calendar_month_sharp),title: const Text("QSR Report")),
          ListTile(onTap: (){
            }
          ,leading: const Icon(Icons.brightness_5),title: const Text("All Reports")),
          ListTile(onTap: (){FirebaseAuth.instance.signOut();Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  Login(),),);
            
          },leading:const  Icon(Icons.logout),title:const Text("Logout"))
          ],),
        ),);
}
}
var defaultColor=Colors.grey[300];
var myAppBar= AppBar(title:const  Text("FulFilKaro"),
        backgroundColor: Colors.grey[900],);
       
    

    