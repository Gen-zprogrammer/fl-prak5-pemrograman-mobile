import 'package:flutter/material.dart';
import 'package:pmo_praktikum5/latihan_looping.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData.dark(),
      home: const LatihanLooping(),
    );
  }
}
