import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fulfill_karo/Screens/AdminScreen.dart';
import 'package:fulfill_karo/Screens/login.dart';
import 'Screens/Consignment_Tracking.dart';
import 'firebase_options.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:const Login(),
      routes: {
        AdminScreen.id:((context) => const AdminScreen()),
        ConsignmentTracking.id:(context) => const ConsignmentTracking()
      },
    );
  }
}

