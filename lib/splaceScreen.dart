import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds:3), () {
      Navigator.of(context).pushReplacementNamed('/first');
    });

    return Scaffold(

      body: Center(
        child: Container(
            height: double.infinity,
            child: Image.asset('assets/img/WhatsApp Image 2024-03-05 at 5.38.03 PM.jpeg',fit: BoxFit.fill,)),
      ),
    );
  }
}
