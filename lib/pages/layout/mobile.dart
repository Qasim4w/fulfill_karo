import 'package:flutter/material.dart';
import 'package:fulfill_karo/pages/layout/constant.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      appBar: myAppBar,
        drawer:Mydrawer.myDrawer(context),
        body:Column(children: [
          Card(elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                  child: Container(
                                                                    child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                    children: [
                                                                     const  Icon(Icons.bus_alert_outlined,size: 50,color: Color.fromARGB(255, 6, 61, 105)),
                                                                     const  SizedBox(height:100,width: 44,),
                                                                      Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                                                                        children: const [
                                                                          Text("Pending COD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(height: 5),
                                                                          Text("22,250",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                                                        ],
                                                                      )],)
        )))]),

          
          )
              ;}
              
     
  }
