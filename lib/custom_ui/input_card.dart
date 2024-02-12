import 'package:flutter/material.dart';
import 'package:resume_builder/screen/userdata.dart';

class InputCard extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String text;
  final TextInputType type;
  const InputCard(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.type,
      required this.text});

  @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  @override
  Widget build(BuildContext context) {
    // function for decoration of textformfield
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: mq.height * .005,
          ),
          TextFormField(
            controller: widget.controller,
            keyboardType: widget.type,
            decoration: InputDecoration(
              labelText: widget.text,
              fillColor: Colors.grey.shade300,
              filled: true,
              hintText: widget.hintText,
            ),
          ),
        ],
      ),
    );
  }
}
