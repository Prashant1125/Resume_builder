import 'package:flutter/material.dart';
import 'package:resume_builder/screen/userdata.dart';

// ignore: must_be_immutable
class InputCard extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String text;
  final TextInputType type;
  String? Function(String?)? validator;
  InputCard(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.type,
      required this.text,
      this.validator});

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
            height: mq.height * .003,
          ),
          SizedBox(
            height: mq.height * .08,
            child: TextFormField(
              validator: widget.validator,
              controller: widget.controller,
              keyboardType: widget.type,
              decoration: InputDecoration(
                labelText: widget.text,
                fillColor: const Color.fromARGB(255, 223, 230, 223),
                filled: true,
                hintText: widget.hintText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
