// ignore_for_file: unused_import, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
//packages
import 'package:firebase_analytics/firebase_analytics.dart';

//services
import './services/navigation_service.dart';
//pages 
import './pages/splash_pages.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(), 
      onInitializationComplete: (){
        runApp(
          MainApp(),
        );
        
      },
      ),
  );
}
class MainApp extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    title: 'Chatify',
    theme: ThemeData(
      backgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
      scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
        ),

    ),
   // navigatorKey: NavigationService.navigatorKey,
   );


 }
}

