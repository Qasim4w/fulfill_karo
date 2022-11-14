
import 'package:flutter/material.dart';
import 'package:fulfill_karo/pages/layout/responsive_layout.dart';
import '../pages/layout/desktop.dart';
import '../pages/layout/mobile.dart';
import '../pages/layout/tablet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
      mobile: Mobile(),
       tablet:  Tablet(),
        desktop: Desktop(),));
  }
}