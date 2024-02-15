import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/headstyle.dart';

import '../modals/data.dart';

// ignore: must_be_immutable
class ResumeScreen extends StatelessWidget {
  // Variable for Using Display data
  final PersonalInfo input;
  final About about;
  final Education10 education10;
  final Education12 education12;
  final GraduationUg graduationUg;
  final GraduationPg graduationPg;
  const ResumeScreen({
    Key? key,
    required this.input,
    required this.about,
    required this.education10,
    required this.education12,
    required this.graduationUg,
    required this.graduationPg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // For Title Text
            const Header(info: 'PERSONAL DETAIL'),

            // Display Personal detail of user

            Text('Name : ${input.name}'),
            Text('Email : ${input.email}'),
            Text('Phone: ${input.phone}'),
            Text('Address: ${input.address}'),
            Text('Status: ${input.status}'),
            Text('Date Of Birth: ${input.dob}'),

            // Display about detail of user
            Text('About : ${about.about}'),
            Text('Skills : ${about.skills}'),
            Text('hobbies : ${about.hobbies}'),
            Text('languages : ${about.languages}'),
            Text('strength : ${about.strength}'),
            Text('weakness : ${about.weakness}'),

            // Display Education detail of user

            if (input.email.isNotEmpty) Text('Class : ${education10.standard}'),
            if (input.email.isNotEmpty) Text('School : ${education10.school}'),
            if (input.email.isNotEmpty) Text('Board : ${education10.board}'),
            if (input.email.isNotEmpty) Text('Result : ${education10.result}'),
            if (input.email.isNotEmpty)
              Text('Year of Passing : ${education10.year}'),

            // Education detail of Class 12th
            if (input.email.isNotEmpty) Text('Class : ${education12.standard}'),
            if (input.email.isNotEmpty) Text('School : ${education12.school}'),
            if (input.email.isNotEmpty) Text('Board : ${education12.board}'),
            if (input.email.isNotEmpty) Text('Result : ${education12.result}'),
            if (input.email.isNotEmpty)
              Text('Year of Passing  : ${education12.year}'),

            // Education detail of Under Gradution
            if (input.email.isNotEmpty) Text('Class : ${graduationUg.course}'),
            if (input.email.isNotEmpty)
              Text('University : ${graduationUg.institute}'),
            if (input.email.isNotEmpty)
              Text('Board : ${graduationUg.university}'),
            if (input.email.isNotEmpty) Text('Result : ${graduationUg.result}'),
            if (input.email.isNotEmpty)
              Text('Year of Passing  : ${graduationUg.year}'),

            // Education detail of Post Gradution
            if (input.email.isNotEmpty) Text('Class : ${graduationPg.course}'),
            if (input.email.isNotEmpty)
              Text('Class : ${graduationUg.institute}'),
            if (input.email.isNotEmpty)
              Text('Board : ${graduationPg.university}'),
            if (input.email.isNotEmpty) Text('Result : ${graduationPg.result}'),
            if (input.email.isNotEmpty)
              Text('Year of Passing  : ${graduationPg.year}'),
          ],
        ),
      ),
    );
  }
}
