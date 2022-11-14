
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fulfill_karo/pages/layout/constant.dart';
import 'package:fulfill_karo/pages/widgets/RoundButton.dart';
import 'package:fulfill_karo/pages/widgets/Utils.dart';
import 'package:fulfill_karo/pages/widgets/textField.dart';


class BookingManagement extends StatefulWidget {
  const BookingManagement({Key? key}) : super(key: key);

  @override
  State<BookingManagement> createState() => _BookingManagementState();
}

class _BookingManagementState extends State<BookingManagement> {
  TextEditingController cnNumber= TextEditingController(text: "Random Numeber");
  TextEditingController Cmobile= TextEditingController();
  TextEditingController CEmail= TextEditingController();
  TextEditingController CName= TextEditingController();
   TextEditingController CAdress= TextEditingController();
    TextEditingController CDesignationCity= TextEditingController();
  
   TextEditingController CWeight= TextEditingController();
    TextEditingController CPieces= TextEditingController();
     TextEditingController CCodAmount= TextEditingController();
      TextEditingController CCustomerRef= TextEditingController();
       TextEditingController CSpecialHandlingCharges= TextEditingController();
        TextEditingController CCashAmount= TextEditingController();
         TextEditingController CProductDetail= TextEditingController();
          TextEditingController CPickupAdress= TextEditingController();
           TextEditingController CRemark= TextEditingController();
           var fstore=FirebaseFirestore.instance.collection("Users");
           
           

 final List _tariff=["Light ","Heavy"];
 final List _specialHandling=["Return Shipment Charges ","Fragile","Mobile Shipment","By Hand","No Insurance Fragile","Insurance Fragile"];
 final List _CitiesName=[
  "Karachi","Lahore","Rawalpindi","Islamabad","Faisalabad","Gujranwala","Multan","Hyderabad","Peshawar","Quetta","Attock","Chichawatni","Bahawalpur","Sheikhupura","Chakwal","Sialkot","Sargodha","Vehari","Burewala","Harappa"
  "Sahiwal","Bahawalnagar","Khanewal","Okara","Depalpur","Gujrat","Daska","Rahim yar Khan","Shukkur","Khairpur","Larkana","Mirpur Azad Kashmir ","JHANG","Kala Shah Kaku","Shahdra","WAZIRABAD","Muzaffargarh","DUDHIYAL","Abbotabad","Haripur"
  "Wah Cant","Aroop","Balkasar","Choa Saiden Shah ","Hazro","Jhelum","Kallar Kahar","Kamra","KAsur","Kharia","Khurianwala","Mirpur Khas","Nandi pur","Nawabshah","Rahwali","Rohri","Sadiqabad","Sanjwal cantt","Tando Allahyar","Toba Tek Singh","Serai Alamgir",

  ];
  final FirebaseAuth fauth = FirebaseAuth.instance;
  
  void initState() {
    // TODO: implement initState
    super.initState();
    cn=CustomerNumber+Random().nextInt(500000).toString();
    userEmail=fauth.currentUser!.email.toString();
   
   
  //      fauth
  // .userChanges()
  // .listen((User? user) {
  //   if (user == null) {
  //     util.toastMessage("Log  to Fulfil karo");
  //     print("User is not Login");
  //   } else {
  //     util.toastMessage("user Log Out ");
  //     print("User sign up ");
  //   }
  // });
    
  }
  bool loading= false;
  String CustomerNumber="821425";
String cn="";
String cmobile="";
String cemail="";
String cname="";
String cadress="";
String cdesignationcity="";
String cweight="";
String cpieces="";
String ccodamount="";
String ccustomerref="";
String cspecialhandlingcharge="";
String ccashamount="";
String cproductdetail="";
String cpickupdaress="";
String cremarks="";

  String SpecialHandling="";
  String TarifValue="";
  String city="Islamabad";
  String Cities="";
  bool checkbox=false;
  final _formkey =GlobalKey<FormState>();
  String? userID;
  String?userEmail;
  Future<void>addUser()async{
return 
await fstore.doc(userEmail).collection("Orders").doc(cn+" "+DateTime.now().toString()).set({
  'CN Number':cn,
  'Mobile No':cmobile,
  'Email':cemail,
  'Name':cname,
  'Adress':cadress,
  'Designation City':cdesignationcity,
'Weight':cweight,
"Pieces":cpieces,
'Service Type':'Cash On Delivery',
'Default Origin City':city,
'COD Amount':ccodamount,
'Is Reverse':checkbox,
'Customer Ref#':ccustomerref,
'Special Handling':SpecialHandling,
'Special Handling Charges':cspecialhandlingcharge,
'Cash Amount':ccashamount,
'Product Detail':cproductdetail,
'Tariff Type':TarifValue,
'Pickup City':Cities,
'Pickup Adress':cpickupdaress,
'Remarks':cremarks
}).then((value) {util.toastMessage("Your Order Has been Confirm \n ");
setState(() {
  loading=false;
   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  BookingManagement(),),);
});}).onError((error, stackTrace) {
  error.toString();
  loading=false;
},);
   
                       
                        
                          
   } 

clearText(){
  
  cnNumber.clear();
  Cmobile.clear();
  CEmail.clear();
  CName.clear();
  CAdress.clear();
  CDesignationCity.clear();
  CWeight.clear();
  CPieces.clear();
  CCodAmount.clear();
  CCashAmount.clear();
  CCustomerRef.clear();
  CSpecialHandlingCharges.clear();
  CPickupAdress.clear();
  CProductDetail.clear();
  CRemark.clear();
  SpecialHandling="Select Special Handling";
  TarifValue="Select Tarif Type";
  Cities="Select Pickup City";
  checkbox=false;

}



  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        body: Row(
          children: [Mydrawer.myDrawer(context),
        //    
           Expanded(
             child: Container(height: double.infinity,width: double.infinity,
                     
              decoration: BoxDecoration(color: Colors.grey[300]),
              child:SingleChildScrollView(
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(key: _formkey,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children:[ 
                      const Text("Booking Management >> Add / Edit Manual Booking ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),const Divider(height: 50,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            const Text("CN Number"),
                           Container( height: MediaQuery.of(context).size.height*.075,
                            width:MediaQuery.of(context).size.width*.2,
                             margin:const  EdgeInsets.symmetric(horizontal: 01,vertical: 7),
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[500],
                             ),
                            child:  Padding(
                              padding: EdgeInsets.all(10.0),
                              child:  Text( '$cn'),
                            ))
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Mobile No *"),
                            MyTextField(
                              validate: (value){
                              if(value == null || value.isEmpty){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: Cmobile,hintText: "Enter Mobile Number",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Email"),
                            MyTextField(Controler: CEmail,hintText: "Enter Your Email",)
                
                          ]
                          ),
                
                        ],),const SizedBox(height: 10),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            const Text("Name *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: CName,hintText: "Consignee Name",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Adress *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: CAdress,hintText: "Consignee Address",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Destination City *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: CDesignationCity,hintText: "Select Designation City",)
                
                          ]
                          ),
                
                        ],),const SizedBox(height: 10),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            const Text("Default Origin City"),
                            Container( height: MediaQuery.of(context).size.height*.075,
                            width:MediaQuery.of(context).size.width*.2,
                             margin:const  EdgeInsets.symmetric(horizontal: 01,vertical: 7),
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.grey[500],
                             ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text('$city'),
                
                          ))]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Weight *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty ){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: CWeight,hintText: "Weight(KG)",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Pieces *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: CPieces,hintText: "pieces",)
                
                          ]
                          ),
                
                        ],),const SizedBox(height: 10),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            const Text("COD Amount *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: CCodAmount,hintText: "COD Amount",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Customer Ref *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty){
                                print("This Filed is required");
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler:CCustomerRef,hintText: "Customer Ref..#",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Service Type"),
                            Container( height: MediaQuery.of(context).size.height*.075,
                            width:MediaQuery.of(context).size.width*.2,
                             margin:const  EdgeInsets.symmetric(horizontal: 01,vertical: 7),
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.grey[500],
                             ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: const Text("Cash On Delivery"),
                            ))
                
                           ]
                          ),
                
                        ],),const SizedBox(height: 10),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children:[ 
                           const  Text("Special Handling *"),
                            Container( 
                              height: MediaQuery.of(context).size.height*.075,
                            width:MediaQuery.of(context).size.width*.2,
                             margin:const  EdgeInsets.symmetric(horizontal: 01,vertical: 7),
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.grey.withOpacity(0.5),
                             ),
                            child: 
                           DropdownButtonFormField( validator: (value) => value == null ? 'field required' : null,
                            decoration:const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10)
                           ),
                           hint:const Text("Select Special Handling"),
                          
                            items: _specialHandling.map(
                            (e){
                              return DropdownMenuItem(child: Text(e),value: e,);
                            } ).toList(),
                             onChanged:(val){
                              setState(() {
                                SpecialHandling=val as String ;
                                print(SpecialHandling);
                              });
                             } ))
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Special Handling Charges *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty){
                                return "This Field Is Required";
                              }return null;
                            },
                              Controler: CSpecialHandlingCharges,hintText: "Special Handling Charges",)
                
                          ]
                          ),
                          
                
                        ],),const SizedBox(height: 10),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            const Text("Cash Amount *"),
                            MyTextField(validate: (value){
                              if(value == null || value.isEmpty ){
                                return "This Field Is Required";
                              }
                              return null;
                            },Controler: CCashAmount,hintText: "Cash Amount",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Product Detail *"),
                            MyTextField( validate: (value){
                              if(value == null || value.isEmpty ){
                                return "This Field Is Required";
                              }
                              return null;
                            },
                              Controler: CProductDetail,hintText: "Prodeuct Detail",)
                
                          ]
                          ),
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Tarif Type *"),
                            Container( height: MediaQuery.of(context).size.height*.075,
                            width:MediaQuery.of(context).size.width*.2,
                             margin: const EdgeInsets.symmetric(horizontal: 01,vertical: 7),
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.grey.withOpacity(0.5),
                             ),
                            child: 
                           DropdownButtonFormField( validator: (value) => value == null ? 'field required' : null,
                            decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(10)
                           ),
                           hint: const Text("Tariff Type"),
                          
                            items: _tariff.map(
                            (e){
                              return DropdownMenuItem(child: Text(e),value: e,);
                            } ).toList(),
                             onChanged:(values){
                              setState(() {
                                TarifValue=values as String ;
                                print(TarifValue);
                              });
                             } ))
                
                          ]
                          ),
                
                        ],),const SizedBox(height: 10),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            const Text("Pickup City *"),
                            Container( 
                              height: MediaQuery.of(context).size.height*.075,
                            width:MediaQuery.of(context).size.width*.2,
                             margin:const  EdgeInsets.symmetric(horizontal: 01,vertical: 7),
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.grey.withOpacity(0.5),
                             ),
                            child: 
                           DropdownButtonFormField( validator: (value) => value == null ? 'field required' : null,
                            decoration:const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10)
                           ),
                           hint:const Text("Select Special Handling"),
                          
                            items: _CitiesName.map(
                            (e){
                              return DropdownMenuItem(child: Text(e),value: e,);
                            } ).toList(),
                             onChanged:(value){
                              setState(() {
                               Cities =value as String ;
                               print(Cities);
                              });
                             }))
                
                          ]
                          ),
                           
                           Column(crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                            const Text("Pickup Adress"),
                            MyTextField(Controler: CPickupAdress,hintText: "Pickup Adress/Location",)
                
                          ]
                          ),
                
                        ],),const SizedBox(height: 10),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                         
                          
                            Column(crossAxisAlignment:CrossAxisAlignment.start,
                              children: [
                              const Text("Remark"),
                              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                           color: Colors.grey.withOpacity(0.6)),
                                width: MediaQuery.of(context).size.width*0.7,
                              height:MediaQuery.of(context).size.height*0.07,
                              child: TextField(controller: CRemark,
                                decoration: const InputDecoration(border: InputBorder.none,contentPadding: const EdgeInsets.all(10))),)
                           
                                                   ]
                                                   ),
                           
                          
                
                        ],),const SizedBox(height: 10),
                       
                         const Text("Is Reversal?"),
                       Row(children: [
                         Checkbox(value: checkbox, onChanged: (value){
                          setState(() {
                            checkbox=value!;
                          });
                
                        }),const Text("Check For Reversal Booking")
                       ],),
                       Center(
                         child:RoundButton(loading: loading,title: 'Save', onTap: () { 
                          
                          if(_formkey.currentState!.validate()){
                            setState(() {
                              setState(() {
                            loading=true;
                          });
                               
                               cmobile=Cmobile.text;
                               cemail=CEmail.text;
                               cname=CName.text;
                               cadress=CAdress.text;
                               cdesignationcity=CDesignationCity.text;
                               cweight=CWeight.text;
                               cpieces=CPieces.text;
                               ccodamount=CCodAmount.text;
                               ccustomerref=CCustomerRef.text;
                               cspecialhandlingcharge=CSpecialHandlingCharges.text;
                               ccashamount=CCashAmount.text;
                               cproductdetail=CProductDetail.text;
                               cpickupdaress=CPickupAdress.text;
                               cremarks=CRemark.text;
                               

                            });
                          
                          
                       
   addUser();
    // clearText(); 
   
   
                       
                
                        
  }}) )]),
                ),
                ),
          
        
          
        )))]));
  }
}