import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/screens/home/home_screen.dart';

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
      title: 'Nauman Aziz',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: whiteColor,
        canvasColor: bgColor,
      ),
      home: const HomeScreen(),
    );
  }
}
