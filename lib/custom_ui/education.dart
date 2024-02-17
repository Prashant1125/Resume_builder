import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Education extends StatefulWidget {
  final String text, leadtext;
  const Education({
    Key? key,
    required this.text,
    required this.leadtext,
  }) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        titleAlignment: ListTileTitleAlignment.top,
        dense: true,
        minVerticalPadding: 5,
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        leading: Text(
          widget.leadtext,
          style: const TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        title: Text(
          widget.text,
          style: const TextStyle(
              fontSize: 15,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w500),
        ));
  }
}
