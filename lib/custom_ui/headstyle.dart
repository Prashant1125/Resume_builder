import 'package:flutter/material.dart';

import '../screen/userdata.dart';

class Header extends StatefulWidget {
  final String info;
  const Header({super.key, required this.info});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
// Headers Style of Resume
    return Container(
      //for Scalling Device Display
      height: mq.width * .08,
      width: mq.width * .4,
      color: const Color.fromARGB(255, 156, 179, 214),
      child: Text(
        widget.info, // Header Title
        textAlign: TextAlign.center,
        style: const TextStyle(
          letterSpacing: 2,
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
