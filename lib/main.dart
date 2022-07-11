

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:oldx_app/model/routes.dart';
import 'package:oldx_app/view/favouritePage.dart';
import 'package:oldx_app/view/homePage.dart';
import 'package:oldx_app/view/loginPage.dart';
import 'package:oldx_app/view/myApp.dart';
import 'package:oldx_app/view/signupPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(
      GetMaterialApp(
      initialRoute: Routes.loginPage,
      routes:{
        Routes.loginPage:(context)=>LoginScreen(),
        Routes.SignupPage:(context)=>SignupScreen(),
        Routes.HomePage:(context)=>HomeScreen(),
        Routes.FavouritePage:(context)=>FavouriteScreen(),
        Routes.MainPage:(context)=>MyApp(),
      },
    )
  );

}