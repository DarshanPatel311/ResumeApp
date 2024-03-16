import 'package:flutter/material.dart';
import 'package:resumeapp/CVScreen.dart';
import 'package:resumeapp/ResumeBuilder.dart';
import 'package:resumeapp/SkillsScreen.dart';
import 'package:resumeapp/splaceScreen.dart';

import 'AddMore.dart';
import 'EducationScreen.dart';
import 'ExperienceScreen.dart';
import 'HomeScreen.dart';
import 'ObjectiveScreen.dart';
import 'PdfScreen.dart';
import 'PersonalDetails.dart';
import 'ProjectsScreen.dart';
import 'Rearrange/Hed.dart';
import 'ReferenceScreen.dart';
import 'SelectObjectiveScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),

      debugShowCheckedModeBanner: false,
       // initialRoute: '/personal',
      routes: {
         '/':(context) => SplashScreen(),
         '/first':(context) => frist(),
         '/home':(context) => home(),
        '/personal': (context) => Personal(),
        '/Education': (context) => Education(),
        '/Experience': (context) => Experience(),
        '/Skills': (context) => Skills(),
        '/Objective': (context) => Objective(),
        '/SelectObj': (context) => SelectObj(),
        '/Reference': (context) => Reference(),
        '/Project': (context) => Project(),
        '/AddMore': (context) => AddMore(),
        '/Rearrange': (context) => Rearrange(),
        '/CV': (context) => CV(),
        '/Pdf': (context) => Pdf(),
      },
    );
  }
}