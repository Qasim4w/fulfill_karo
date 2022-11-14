
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  String? hintText;
 
  TextEditingController? Controler;
  String? Function(String?)? validate;
  TextInputType? keyboardType;
  String?labelText;
   MyTextField({
    this.labelText,
    this.keyboardType,
    Key? key, 
    this.hintText,
    required this.Controler,
    this.validate,
    }) : super(key: key);
final formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.075,width:MediaQuery.of(context).size.width*.2,
      margin: const EdgeInsets.symmetric(horizontal: 01,vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: TextFormField(
        
        keyboardType: keyboardType ,
        controller: Controler,
        validator: validate,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(border: InputBorder.none,
        hintText: hintText,
        labelText: labelText,
        
        contentPadding: const EdgeInsets.all(10)
        ),
      ),
    );
  }
}