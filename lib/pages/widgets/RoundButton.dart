import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
 final  String title;
final VoidCallback onTap;
final bool loading;

   const RoundButton({Key? key ,
   required this.title,
   required this.onTap,
   this.loading=false,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.grey[600],
          borderRadius:BorderRadius.circular(10),

        ),child: Center(child: loading?const CircularProgressIndicator(): Center(child: Text(title,style: const TextStyle(color: Colors.white,),)),),
      ),
    );
  }
}