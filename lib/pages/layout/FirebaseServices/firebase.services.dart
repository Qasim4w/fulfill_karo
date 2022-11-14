
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:fulfill_karo/pages/widgets/Utils.dart';

// class FirebaseServices{
//   String? cn;
// String? cmobile;
// String? cemail;
// String? cname;
// String? cadress;
// String? cdesignationcity;
// String? cweight;
// String? cpieces;
// String ?ccodamount;
// String? ccustomerref;
// String? cspecialhandlingcharge;
// String? ccashamount;
// String? cproductdetail;
// String? cpickupdaress;
// String? cremarks;
// bool? loading;

//   String? SpecialHandling;
//   String? TarifValue;
//   String? city;
//   String? Cities;
//   bool? checkbox;
//   String? Services;
  
//   FirebaseServices({
//     this.loading,
// this.cn,
// required this.cmobile,
// required this. cemail,
// required this.cname,
// required this. cadress,
// required this. cdesignationcity,
// required this. cweight,
// required this. cpieces,
// this.ccodamount,
// required this. ccustomerref,
// required this. cspecialhandlingcharge,
// required this. ccashamount,
// required this. cproductdetail,
// required this. cpickupdaress,
// required this. cremarks,


//  required this. SpecialHandling,
//  required this. TarifValue,
//  required this. city,
//  required this. Cities,
//  required this. checkbox,
//   });
//   var db=FirebaseFirestore.instance.collection("Order");
  
//   Future<void>addUser(){
// return db.add({'CN Number':cn,'Mobile No':cmobile,'Email':cemail,'Name':cname,'Adress':cadress,'Designation City':cdesignationcity,
// 'Weight':cweight,"Pieces":cpieces,'Service Type':'Cash On Delivery','Default Origin City':city,'COD Amount':ccodamount,'Is Reverse':checkbox,'Customer Ref#':ccustomerref,'Special Handling':SpecialHandling,'Special Handling Charges':cspecialhandlingcharge,'Cash Amount':ccashamount,'Product Detail':cproductdetail,'Tariff Type':TarifValue,'Pickup City':Cities,'Pickup Adress':cpickupdaress,'Remarks':cremarks}).then((value) { util.toastMessage(" Your Order Has Been Saved  \n $value");setstate}).onError((error, stackTrace) => util.toastMessage(error.toString()));
//   }
 
// }
