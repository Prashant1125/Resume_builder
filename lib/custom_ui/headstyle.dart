import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Header extends StatefulWidget {
  final String info;
  Widget? leading;
  Header({super.key, required this.info, this.leading});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
// Headers Style of Resume
    return Container(
        //for Scalling Device Display
        alignment: Alignment.center,
        width: double.infinity,
        color: const Color.fromARGB(255, 156, 179, 214),
        child: ListTile(
            titleAlignment: ListTileTitleAlignment.top,
            contentPadding: const EdgeInsets.only(left: 5),
            visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
            leading: widget.leading,
            title: Text(
              widget.info,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600),
            )));
  }
}
