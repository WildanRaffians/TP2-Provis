import 'package:flutter/material.dart';
import 'package:dihospital_home/bottomNavBar.dart';


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
      title: 'DI Hospital',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 1, 101, 252)),
        useMaterial3: true,
        fontFamily: 'inter',
      ),
      home: const BottomNavBar(idx: 0),
    );
  }
}