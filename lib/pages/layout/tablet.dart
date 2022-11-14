import 'package:flutter/material.dart';


import 'constant.dart';


class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:defaultColor,
      appBar: myAppBar,
        drawer:Mydrawer.myDrawer(context),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20) 
                                        ),
                                        child:
                                        Column(mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(mainAxisAlignment: MainAxisAlignment.start
                                                  ,crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [
                                                      Text("Welcome ",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color:Color.fromARGB(255, 42, 104, 45),
                                                        fontWeight: FontWeight.bold)),
                                                        Text("Sales Lead : Eng Hamza",style: TextStyle(color: Colors.grey),)
                                                    ],
                                                  ),const Text("Time here ")],
                                              ),
                                            ),
                                             const  Image(image: AssetImage('images/welcome.jpeg'),width: 400,height: 200,),
                                            ],
                                          ),
                      height: MediaQuery.of(context).size.height*.50,
                      width: MediaQuery.of(context).size.width*.40,),const SizedBox(width: 10,),
                     Container(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [const Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text("Account Summary",style: TextStyle(color: Color.fromARGB(255, 42, 104, 45),fontSize: 20,fontWeight: FontWeight.w800),),
                                ),const SizedBox(height: 10,),
                                  Row(children: [
                                                Card(elevation: 10,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20)),
                                                     child: Container(
                                                                    child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                    children: [
                                                                     const  Icon(Icons.car_crash_outlined,size: 50,color: Color.fromARGB(255, 31, 112, 15)),
                                                                     const  SizedBox(height:100,width: 30,),
                                                                      Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                                                                        children:const  [
                                                                          Text("Total Shipment",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(height: 5),
                                                                          Text("250",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                                                        ],
                                                                      )],),
                                                                ),),
                                                                ),
                                                                const SizedBox(width: 10,),
                                                                Card(elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                  child: Container(
                                                                    child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                    children: [
                                                                     const  Icon(Icons.delivery_dining_outlined,size: 50,color: Color.fromARGB(255, 189, 186, 15)),
                                                                     const  SizedBox(height:100,width: 60,),
                                                                      Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                                                                        children: const [
                                                                          Text("   Delivered",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(height: 5),
                                                                          Text("120",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                                                        ],
                                                                      )],),
                                                                ),),
                                                                )]),const SizedBox(width: 10,),Row(children: [
                                                                
                                                                Card(elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                  child: Container(
                                                                    child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                    children: [
                                                                     const  Icon(Icons.restore,size: 50,color: Color.fromARGB(255, 6, 61, 105)),
                                                                     const  SizedBox(height:100,width: 80,),
                                                                      Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                                                                        children:const  [
                                                                          Text("Returns",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(height: 5),
                                                                          Text("250",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                                                        ],
                                                                      )],),
                                                                ),),
                                                                ),const SizedBox(width: 10,),
                                                                Card(elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                  child: Container(
                                                                    child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                    children: [
                                                                    const   Icon(Icons.manage_accounts_outlined,size: 50,color: Color.fromARGB(255, 6, 61, 105)),
                                                                     const  SizedBox(height:100,width: 120,),
                                                                      Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                                                                        children:const  [
                                                                          Text("NCI",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(height: 5),
                                                                          Text("250",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                                                        ],
                                                                      )],),
                                                                ),),
                                                                ),
                                                                      
                                                 ] )
                                                 ,const SizedBox(height: 10,),Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                                     Card(elevation: 10,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                                                  child: Container(
                                                                    child: Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                    children: [
                                                                     const  Icon(Icons.payments_sharp,size: 50,color: Color.fromARGB(255, 6, 61, 105)),
                                                                     const  SizedBox(height:100,width: 74,),
                                                                      Column(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.end,
                                                                        children:const  [
                                                                          Text("Total COD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),SizedBox(height: 5),
                                                                          Text("325,915",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                                                        ],
                                                                      )],),
                                                                ),),
                                                                ),const SizedBox(width: 10,),
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
                                                                      )],),
                                                                ),),
                                                                ),const SizedBox(width: 10,height: 10,),
                                                                   ],),const SizedBox(height: 10,),const Padding(
                                                                     padding: EdgeInsets.all(3.0),
                                                                     child: Text("Forward Journey",style: TextStyle(color: Color.fromARGB(255, 42, 104, 45),fontSize: 20,fontWeight: FontWeight.w800),),
                                                                   ),
                                                                   Row(children: [
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
                                                                      )],),
                                                                ),),
                                                                ),const SizedBox(width: 10,),
                                                                   ],)
                                                                   ,const SizedBox(height: 10,),const Padding(
                                                                     padding: EdgeInsets.all(3.0),
                                                                     child: Text("Reverse Journey",style: TextStyle(color: Color.fromARGB(255, 42, 104, 45),fontSize: 20,fontWeight: FontWeight.w800),),
                                                                   )
                                                                    ,Row(children: [
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
                                                                      )],),
                                                                ),),)

              ]),
          ]))])

            
          )));
          
              
        
        
          
  }
}