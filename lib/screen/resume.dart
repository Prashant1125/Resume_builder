import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/headstyle.dart';

// ignore: must_be_immutable
class ResumeScreen extends StatelessWidget {
  // Variable for Using Display data
  String name, email, phone, address;
  ResumeScreen(
      {Key? key,
      required this.phone,
      required this.email,
      required this.name,
      required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // For Title Text
              const Header(info: 'PERSONAL DETAIL'),

              // Display Personal detail of user

              Text('Name : $name'),
              Text('Email : $email'),
              Text('Phone: $phone'),
              Text('Address: $address '),
            ],
          ),
        ],
      ),
    );
  }
}
