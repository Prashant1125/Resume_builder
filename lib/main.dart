import 'package:flutter/material.dart';

import 'screen/userdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Resume Builder',
      home: UserDataInput(),
    );
  }
}