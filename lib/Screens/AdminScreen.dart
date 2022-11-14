import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:fulfill_karo/Screens/Consignment_Tracking.dart';

class AdminScreen extends StatefulWidget {
   static const String id="AdminLogin";
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
 
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(sideBar:const SideBar(
      items: [
        AdminMenuItem(title:"Consignment Tracking",
        icon: Icons.track_changes_outlined,
        route: ConsignmentTracking.id),
        AdminMenuItem(title:"Add Product",icon: Icons.add),
        AdminMenuItem(title:"Delete Product",icon: Icons.delete),
        AdminMenuItem(title:"Booking Management",icon: Icons.collections_bookmark),
        
       
      ],
       selectedRoute:ConsignmentTracking.id ),
      appBar: AppBar(
      backgroundColor: Colors.black,title: Text("ADMIN DASHBOARD")),
      body: Center(child: Text("Welcome Admin"),));
  }
}