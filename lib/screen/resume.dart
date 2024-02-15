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
  final Diploma diploma;
  const ResumeScreen({
    Key? key,
    required this.input,
    required this.about,
    required this.education10,
    required this.education12,
    required this.graduationUg,
    required this.graduationPg,
    required this.diploma,
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
            if (input.address.isNotEmpty) Text('Address: ${input.address}'),
            if (input.status.isNotEmpty) Text('Status: ${input.status}'),
            if (input.dob.isNotEmpty) Text('Date Of Birth: ${input.dob}'),
            if (input.profession.isNotEmpty)
              Text('Profession: ${input.profession}'),

            // Display about detail of user
            if (about.about.isNotEmpty) Text('About : ${about.about}'),
            if (about.skills.isNotEmpty) Text('Skills : ${about.skills}'),
            if (about.hobbies.isNotEmpty) Text('hobbies : ${about.hobbies}'),
            if (about.languages.isNotEmpty)
              Text('languages : ${about.languages}'),
            if (about.strength.isNotEmpty) Text('strength : ${about.strength}'),
            if (about.weakness.isNotEmpty) Text('weakness : ${about.weakness}'),

            // Display Education detail of user

            if (education10.standard.isNotEmpty)
              Text('Class : ${education10.standard}'),
            if (education10.school.isNotEmpty)
              Text('School : ${education10.school}'),
            if (education10.board.isNotEmpty)
              Text('Board : ${education10.board}'),
            if (education10.result.isNotEmpty)
              Text('Result : ${education10.result}'),
            if (education10.year.isNotEmpty)
              Text('Year of Passing : ${education10.year}'),

            // Education detail of Class 12th
            if (education12.standard.isNotEmpty)
              Text('Class : ${education12.standard}'),
            if (education12.school.isNotEmpty)
              Text('School : ${education12.school}'),
            if (education12.board.isNotEmpty)
              Text('Board : ${education12.board}'),
            if (education12.result.isNotEmpty)
              Text('Result : ${education12.result}'),
            if (education12.year.isNotEmpty)
              Text('Year of Passing  : ${education12.year}'),

            // Education detail of Under Gradution
            if (graduationUg.course.isNotEmpty)
              Text('Class : ${graduationUg.course}'),
            if (graduationUg.institute.isNotEmpty)
              Text('Institute : ${graduationUg.institute}'),
            if (graduationUg.university.isNotEmpty)
              Text('University : ${graduationUg.university}'),
            if (graduationUg.result.isNotEmpty)
              Text('Result : ${graduationUg.result}'),
            if (graduationUg.year.isNotEmpty)
              Text('Year of Passing  : ${graduationUg.year}'),

            // Education detail of Post Gradution
            if (graduationPg.course.isNotEmpty)
              Text('Class : ${graduationPg.course}'),
            if (graduationPg.institute.isNotEmpty)
              Text('Institute : ${graduationUg.institute}'),
            if (graduationPg.university.isNotEmpty)
              Text('University : ${graduationPg.university}'),
            if (graduationPg.result.isNotEmpty)
              Text('Result : ${graduationPg.result}'),
            if (graduationPg.year.isNotEmpty)
              Text('Year of Passing  : ${graduationPg.year}'),

            // Education detail of Diploma
            if (diploma.course.isNotEmpty) Text('Class : ${diploma.course}'),
            if (diploma.institute.isNotEmpty)
              Text('Institute : ${diploma.institute}'),
            if (diploma.university.isNotEmpty)
              Text('University : ${diploma.university}'),
            if (diploma.result.isNotEmpty) Text('Result : ${diploma.result}'),
            if (diploma.year.isNotEmpty)
              Text('Year of Passing  : ${diploma.year}'),
          ],
        ),
      ),
    );
  }
}
