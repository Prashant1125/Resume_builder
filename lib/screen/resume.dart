import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/detail_card.dart';
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
        child: Row(
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
                  ),

                  // for email id
                  ResumeCard(
                    text: input.email,
                    leading: const Icon(Icons.email),
                  ),

                  // for address
                  if (input.address.isNotEmpty)
                    ResumeCard(
                      text: input.address,
                      leading: const Icon(Icons.location_on),
                    ),

                  // For Other Detail

                  const Header(info: 'Other Detail'),

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
                ],
              ),
            ),
            SizedBox(
              width: mq.width * .01,
            ),

            // Right Side

            Container(
              width: mq.width * .48,
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
                ],
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
