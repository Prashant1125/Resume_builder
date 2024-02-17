import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResumeCard extends StatefulWidget {
  Widget? leading;
  final String text;
  ResumeCard({
    Key? key,
    this.leading,
    required this.text,
  }) : super(key: key);

  @override
  State<ResumeCard> createState() => _ResumeCardState();
}

class _ResumeCardState extends State<ResumeCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        dense: true,
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
        leading: widget.leading,
        title: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 15,
          ),
        ));
  }
}
