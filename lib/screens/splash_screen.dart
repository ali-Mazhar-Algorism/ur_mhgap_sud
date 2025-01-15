import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mhgap_urdu/app.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MyApp(), // Navigate to the main app
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 400, // Set your desired maximum width here
        ),
        child: Container(
          // width: double.infinity, // Remove this line
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_screen.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ));
  }
}
