import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/detail_card.dart';
import 'package:resume_builder/custom_ui/education.dart';
import 'package:resume_builder/custom_ui/headstyle.dart';
import 'package:resume_builder/custom_ui/resume_card.dart';
import 'package:resume_builder/screen/userdata.dart';

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
          child: SafeArea(
              child: Padding(
        padding: EdgeInsets.only(left: mq.width * .01, right: mq.width * .01),

        // left side Resume
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: mq.width * .49,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,

                    // For Image and contact detail
                    children: [
                      // Photo

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: mq.width * .35,
                          height: mq.height * .2,
                          color: Colors.grey,
                        ),
                      ),

                      // Mobile No.

                      ResumeCard(
                        text: input.phone,
                        leading: const Icon(Icons.phone_iphone_rounded),
                        leadtext: '',
                      ),

                      // for email id
                      ResumeCard(
                        text: input.email,
                        leading: const Icon(Icons.email),
                        leadtext: '',
                      ),

                      // for address
                      if (input.address.isNotEmpty)
                        ResumeCard(
                          text: input.address,
                          leading: const Icon(Icons.location_on),
                          leadtext: '',
                        ),

                      SizedBox(
                        height: mq.height * .02,
                      ),

                      // For Other Detail

                      Header(info: '-OTHER DETAILS'),
                      SizedBox(
                        height: mq.height * .01,
                      ),

                      // for Date Of birth
                      if (input.dob.isNotEmpty)
                        DetailCard(
                          text: input.dob,
                          lead: 'DOB :',
                        ),

                      // for nationallity
                      if (input.nation.isNotEmpty)
                        DetailCard(
                          text: input.nation,
                          lead: 'Nationality :',
                        ),

                      // for Status
                      if (input.status.isNotEmpty)
                        DetailCard(
                          text: input.status,
                          lead: 'Marital Status :',
                        ),

                      SizedBox(
                        height: mq.height * .02,
                      ),
                      // for Skills

                      Header(info: '-SKILLS'),

                      // for adding skills

                      if (about.skills.isNotEmpty)
                        ResumeCard(
                          text: about.skills,
                          leadtext: '',
                        ),

                      // for adding skills
                    ],
                  ),
                ),
                SizedBox(
                  width: mq.width * .01,
                ),

                // Right Side

                SizedBox(
                  width: mq.width * .48,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,

                    // For Image and contact detail
                    children: [
                      // Photo

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // name
                              Text(
                                input.name,
                                style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              // profession
                              if (input.profession.isNotEmpty)
                                Text(
                                  input.profession,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                )
                            ],
                          ),
                        ),
                      ),

                      // for about yourself
                      if (about.about.isNotEmpty)
                        ResumeCard(
                          text: about.about,
                          leading: const Icon(Icons.person),
                          leadtext: '',
                        ),

                      // Hobbies

                      SizedBox(
                        height: mq.height * .01,
                      ),
                      //Strength
                      if (about.hobbies.isNotEmpty)
                        Header(
                          info: 'HOBBIES',
                          leading:
                              const Icon(Icons.play_circle_outline_outlined),
                        ),

                      if (about.weakness.isNotEmpty)
                        ResumeCard(
                          text: about.weakness,
                          leadtext: '',
                        ),

                      SizedBox(
                        height: mq.height * .01,
                      ),
                      //Strength
                      if (about.strength.isNotEmpty)
                        Header(
                          info: 'STRENGTHS',
                          leading: const Icon(Icons.power_outlined),
                        ),

                      if (about.strength.isNotEmpty)
                        ResumeCard(
                          text: about.strength,
                          leadtext: '',
                        ),

                      // Weakness

                      SizedBox(
                        height: mq.height * .01,
                      ),
                      //WEAKNess
                      if (about.weakness.isNotEmpty)
                        Header(
                          info: 'WEAKNESS',
                          leading: const Icon(Icons.power_off_outlined),
                        ),

                      if (about.weakness.isNotEmpty)
                        ResumeCard(
                          text: about.weakness,
                          leadtext: '',
                        ),

                      SizedBox(
                        height: mq.height * .01,
                      ),

                      // for Languages

                      Header(info: '-LANGUAGES'),

                      if (about.languages.isNotEmpty)
                        ResumeCard(
                          text: about.languages,
                          leadtext: '',
                        ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: mq.height * .03,
            ),

            // For Education
            Header(
              info: 'EDUCATION',
              leading: const Icon(Icons.cast_for_education_outlined),
            ),
            if (education10.standard.isNotEmpty)
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blueGrey)),
                child: Column(
                  children: [
                    Education(leadtext: 'Class :', text: education10.standard),
                    Education(text: education10.year, leadtext: 'Year :'),
                    Education(text: education10.school, leadtext: 'School :'),
                    Education(text: education10.board, leadtext: 'Board :'),
                    Education(text: education10.result, leadtext: 'Result :'),
                  ],
                ),
              ),
            SizedBox(
              height: mq.height * .01,
            ),

            if (education12.standard.isNotEmpty)
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blueGrey)),
                child: Column(
                  children: [
                    Education(leadtext: 'Class :', text: education12.standard),
                    Education(text: education12.year, leadtext: 'Year :'),
                    Education(text: education12.school, leadtext: 'School :'),
                    Education(text: education12.board, leadtext: 'Board :'),
                    Education(text: education12.result, leadtext: 'Result :'),
                  ],
                ),
              ),

            // Under GRADUATION
            if (graduationUg.course.isNotEmpty)
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blueGrey)),
                child: Column(
                  children: [
                    Education(leadtext: 'Course :', text: graduationUg.course),
                    Education(text: graduationUg.year, leadtext: 'Year :'),
                    Education(
                        text: graduationUg.institute, leadtext: 'Institute :'),
                    Education(
                        text: graduationUg.university,
                        leadtext: 'University :'),
                    Education(text: graduationUg.result, leadtext: 'Result :'),
                  ],
                ),
              ),

            // POST GRADUATION
            if (graduationPg.course.isNotEmpty)
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blueGrey)),
                child: Column(
                  children: [
                    Education(leadtext: 'Course :', text: graduationPg.course),
                    Education(text: graduationPg.year, leadtext: 'Year :'),
                    Education(
                        text: graduationPg.institute, leadtext: 'Institute :'),
                    Education(
                        text: graduationPg.university,
                        leadtext: 'University :'),
                    Education(text: graduationPg.result, leadtext: 'Result :'),
                  ],
                ),
              ),

            // Diploma
            if (diploma.course.isNotEmpty)
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blueGrey)),
                child: Column(
                  children: [
                    Education(leadtext: 'Course :', text: diploma.course),
                    Education(text: diploma.year, leadtext: 'Year :'),
                    Education(text: diploma.institute, leadtext: 'Institute :'),
                    Education(
                        text: diploma.university, leadtext: 'University :'),
                    Education(text: diploma.result, leadtext: 'Result :'),
                  ],
                ),
              ),
          ],
        ),
      ))),
    );
  }
}
