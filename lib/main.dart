import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniy/view/screen/auth/login_screen.dart';
import 'package:miniy/view/screen/auth/verify.dart';
import 'package:miniy/view/screen/createaccount.dart';
import 'controller/auth_controller.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp().then((value){
   Get.put(AuthController());
 });

  runApp(GetMaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'phone': (context) => MyPhone(),
      'verify': (context) => MyVerify(),
      'home' :(context) => Myhome()
    },

  
  )
  
  );
  
}
