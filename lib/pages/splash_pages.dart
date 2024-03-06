// ignore_for_file: unused_import, avoid_print, duplicate_import

import 'package:chatify_app/services/database_service.dart';
import 'package:flutter/material.dart';
// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore
//packages
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

//services
import  '../services/navigation_service.dart';
import '../services//media_service.dart';
import '../services/cloud_storage_service.dart';
import '../services/database_service.dart';


class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;
  

  const SplashPage({required Key key, required this.onInitializationComplete})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
       _setup() .then(
        (_) => widget.onInitializationComplete(),
    );
    });
    
   

  }

  @override
  Widget build(BuildContext context) {
    
    // ignore: deprecated_member_use
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatify',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
        scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, 
                    image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
  Future<void>  _setup() async{
    try {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      _registerServices();
    } catch (e) {
      print('Error initializing Firebase: $e'); // Print the error message
      // Handle the error appropriately, e.g., show a dialog or fallback mechanism
    }
  }
  
  void _registerServices() {
    GetIt.instance.registerSingleton<NavigationService>(
      NavigationService(),
    );
    GetIt.instance.registerSingleton<MediaService>(
      MediaService(),
      );
    GetIt.instance.registerSingleton<CloudStorageService>(
      CloudStorageService(),
      );
    GetIt.instance.registerSingleton<DatabaseService>(
      DatabaseService(),
      );
  }
     
       
  }

  


