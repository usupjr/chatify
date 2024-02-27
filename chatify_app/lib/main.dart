// ignore_for_file: unused_import

import 'package:flutter/material.dart';
//packages
import 'package:firebase_analytics/firebase_analytics.dart';
//pages 
import './pages/splash_pages.dart';

void main() {
  runApp(
    SplashPage(
      key: UniqueKey(), 
      onInitializationComplete: (){},
      ),
  );
}

