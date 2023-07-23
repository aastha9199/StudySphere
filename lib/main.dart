import 'package:courseapp/screens/home/course_home.dart';
import 'package:courseapp/screens/intro/intro_screen.dart';
import 'package:courseapp/util/route_names.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        RouteNames.intro: (context) => const IntroScreen(),
        RouteNames.courseHome: ((context) => const CourseHome())
      },
    );
  }
}
