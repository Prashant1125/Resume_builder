import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/headstyle.dart';
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
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            // For Image and contact detail
            children: [
              // Photo
              ListTile(
                  leading: Container(
                    width: mq.width * .3,
                    height: mq.height * .15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey),
                  ),
                  title: Text(
                    input.name,
                    style: const TextStyle(
                      fontSize: 40,
                    ),
                  )),
              SizedBox(
                height: mq.height * .03,
              ),

              // Mobile No.

              Row(
                children: [
                  const Icon(
                    Icons.phone_android_rounded,
                  ),
                  SizedBox(
                    width: mq.width * .02,
                  ),
                  Text(
                    input.phone,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: mq.height * .01,
              ),

              // for email id
              Row(
                children: [
                  const Icon(Icons.email),
                  SizedBox(
                    width: mq.width * .02,
                  ),
                  Text(
                    input.email,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: mq.height * .01,
              ),

              // for address
              if (input.address.isNotEmpty)
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined),
                    SizedBox(
                      width: mq.width * .02,
                    ),
                    Text(
                      input.address,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ],
                ),
              SizedBox(
                height: mq.height * .02,
              ),
              // For Other Detail

              const Header(info: 'Other Detail'),

              // for Date Of birth
              if (input.dob.isNotEmpty)
                Row(
                  children: [
                    const Text(
                      'DOB :',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mq.width * .02,
                    ),
                    Text(
                      input.dob,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ],
                ),

              // for nationallity
              if (input.nation.isNotEmpty)
                Row(
                  children: [
                    const Text(
                      'Nationality :',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mq.width * .02,
                    ),
                    Text(
                      input.nation,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ],
                ),

              // for Status
              if (input.status.isNotEmpty)
                Row(
                  children: [
                    const Text(
                      'Marital Status :',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: mq.width * .02,
                    ),
                    Text(
                      input.status,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ))),
    );
  }
}
