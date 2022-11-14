import 'package:flutter/material.dart';
import 'package:fulfill_karo/Screens/AdminScreen.dart';
import 'package:fulfill_karo/Screens/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fulfill_karo/pages/layout/constant.dart';
import 'package:fulfill_karo/pages/widgets/RoundButton.dart';
import 'package:fulfill_karo/pages/widgets/Utils.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey =GlobalKey<FormState>();
bool loading =false;
  var email="";
  var password="";
  String adminEmail="Admin755@gmail.com";
  String adminPassword="admin755";
  final emailController= TextEditingController();
  final passwordController=TextEditingController();
  final FirebaseAuth fauth=FirebaseAuth.instance;
  
  
  

                   userLogin(){
                     setState(() {
                          loading=true;
                       });
                        
                       FirebaseAuth.instance.signInWithEmailAndPassword
                       (email: emailController.text.toString(), 
                       password:passwordController.text.toString()).then((value){
                        util.toastMessage(value.user!.email.toString());
                        
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  HomeScreen(),),);
                        setState(() {
                          loading=false;
                        });
                       }).onError((error, stackTrace) {
                        debugPrint(error.toString());
                        util.toastMessage(error.toString());
                        setState(() {
                          loading=false;
                        });
                       }); 
}
@override
  
  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(width: double.infinity,
          decoration:  BoxDecoration(
            
          color: defaultColor
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [Expanded(child: Center(
                child: Container(
                  height: 400,
                  width: 350,
                  decoration: BoxDecoration(  
                  color: Colors.grey[300],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10)),boxShadow: const [BoxShadow(
                      color: Color.fromARGB(255, 240, 221, 216),
                      blurRadius:20,
                       offset:Offset(0, 10)),],),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Form
                      (
                        key: _formkey,
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextFormField(decoration:const InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                            border: OutlineInputBorder(
                            ),
                            errorStyle: TextStyle(color: Colors.redAccent),
                            hintText: 'Username/Email'
                          ),
                            controller: emailController,
                            validator: (value) {
                              if(value==null || value.isEmpty){
                                // ignore: avoid_print
                                print("Kindly Enter Email / User Name");
                                return "Kindly Enter Email";
     
                              }else if(!value.contains('@')){
                                // ignore: avoid_print
                                print("Provide Valid Email");
                                return "Email is InValid";
                              }
                            },
                          ),const SizedBox(height: 10),
                          TextFormField(autofocus: false,
                          obscureText: true
                            ,decoration:const  InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                           border: OutlineInputBorder(),
                           errorStyle: TextStyle(color: Colors.redAccent),
                            hintText: 'Password'),
                            controller: passwordController,
                            validator: (value) {
                              if(value==null || value.isEmpty){
                                // ignore: avoid_print
                                print("Kindly Enter Password");
                                return "Password is Required";
                              
                              }
    
                            },
                          ),
                        ],),
                      ),
                      const SizedBox(height: 10,),
                      RoundButton(title: 'Log in ',loading: loading,
                       onTap: (){
                        if(_formkey.currentState!.validate()){
                          if(emailController.text==adminEmail&&passwordController.text==adminPassword)
                          {
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  AdminScreen(),),);
                          }else
                        userLogin();
                        }
                      }),
                      const SizedBox(height:10),
                      TextFormField(
                            decoration: const InputDecoration(hintText: "Track your Shipment",focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              border: OutlineInputBorder(),
                           errorStyle: TextStyle(color: Colors.redAccent),
                            ),
                          ),IconButton(onPressed: (() {
                            
                          }), icon: const Icon(Icons.search,size: 50,)
                      ),
                     
                      
                    ],
                  ),
                ),
                ),
              ))],
            ),
          ),
        ),
        
      );
    
    
     
  }
}