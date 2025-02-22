 import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mhgap_urdu/simple_bloc_observer.dart';
import 'package:mhgap_urdu/screens/splash_screen.dart'; // Import the splash screen

 class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MySplashScreenApp());
}

class MySplashScreenApp extends StatelessWidget {
  const MySplashScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mhGAP_urdu',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MySplashScreen(), // Set the splash screen as the initial screen
    );
  }
}
