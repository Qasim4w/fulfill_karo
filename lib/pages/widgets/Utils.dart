import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class util{
  static toastMessage(String message){
    Fluttertoast.showToast(
      msg:message,
      backgroundColor:Colors.red,
      textColor:Colors.white,
      toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        
        
        fontSize: 16.0
    );
  }
}