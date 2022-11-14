import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fulfill_karo/pages/layout/constant.dart';
import 'package:fulfill_karo/pages/widgets/RoundButton.dart';
import 'package:fulfill_karo/pages/widgets/Utils.dart';
import 'package:fulfill_karo/pages/widgets/textField.dart';

class AddProduct extends StatefulWidget {
   AddProduct({super.key});

  @override
  


  State<AddProduct> createState() => _AddProductState();
}
final db=FirebaseFirestore.instance.collection("Users");
final fauth = FirebaseAuth.instance;
final _formkey =GlobalKey<FormState>();
TextEditingController ProductController =TextEditingController();
  TextEditingController SkuController =TextEditingController();
  TextEditingController QuantitytController =TextEditingController();

class _AddProductState extends State<AddProduct> {
  @override
  
  Future <void> ProductDataStore(){
return db.doc(userEmail).collection("Products").doc(productname).set(
  {"PRoduct Name":productname,
  "Product SKU":sku,
  "Quantity Given":quantity,
  "Quantity Sold":"0",
  "Remaining":"0"
  }
).then((value) {
  util.toastMessage("Product Has been Added in Your Profile");
  setState(() {
    loading=false;
  });
} ).onError((error, stackTrace) { util.toastMessage(error.toString());setState(() {
    loading=false;
  });});

}


@override
  void initState() {
    // TODO: implement initState
    userEmail=fauth.currentUser!.email;
    docID=db.doc(userEmail).collection("Products").doc().toString();
    print(docID);
    super.initState();
  }
bool loading=false;
  String productname='';
  String? docID;
  String? userEmail;
  String sku ='';
  String quantity='';
  int item=0;
  clear(){
    SkuController.clear();
    ProductController.clear();
    QuantitytController.clear();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [Mydrawer.myDrawer(context),
      Expanded(child:
       Container(
        child: Form(key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,children: [
            Text("Add Product",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            MyTextField(hintText: 'Add Product Name' ,
            validate: (value){
                                if(value == null || value.isEmpty ){
                                  return "This Field Is Required";
                                }
                                return null;
                              },
              Controler: ProductController),SizedBox(height: 10,),
            MyTextField
            (Controler: SkuController,
            validate: (value){
                                if(value == null || value.isEmpty ){
                                  return "This Field Is Required";
                                }
                                return null;
                              },
            hintText: 'Product Sku ',
            ),SizedBox(height: 10,),
            MyTextField
            (hintText: 'Quantity Given',keyboardType: TextInputType.number,
            
              Controler:QuantitytController,
              validate:(value){
                                if(value == null || value.isEmpty ){
                                  return "This Field Is Required";
                                }else if( !value.contains(RegExp(r'[0-9]'))){
                                  return "Must write in Number";
                                }
                                return null;
                              },
            ),SizedBox(height: 10,),
            RoundButton(title: 'Add Product', loading: loading,onTap: (){
        if(_formkey.currentState!.validate()){
         
          item++;
          print("Pressed");
        }
        setState(() {
          setState(() {
            loading=true;
          });
           productname=ProductController.text;
         sku=SkuController.text;
         quantity=QuantitytController.text;
         clear();
         
        });
        ProductDataStore();
            })
        
          ],),
        )))]),

    );
  }
}
