import 'package:flutter/material.dart';
import 'package:resumeapp/ResumeBuilder.dart';
import 'package:resumeapp/splaceScreen.dart';

import 'EducationScreen.dart';
import 'HomeScreen.dart';
import 'PersonalDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       // initialRoute: '/personal',
      routes: {
         '/':(context) => SplashScreen(),
         '/first':(context) => frist(),
         '/home':(context) => home(),
        '/personal': (context) => Personal(),
        '/Education': (context) => Education(),
      },
    );
  }
}