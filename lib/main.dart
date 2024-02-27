import 'package:flutter/material.dart';
import 'package:resume_builder/screen/splace.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Builder',
      home: SplaceScreen(),
    );
  }
}
