import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/custom_ui/detail_card.dart';
import 'package:resume_builder/custom_ui/education.dart';
import 'package:resume_builder/custom_ui/headstyle.dart';
import 'package:resume_builder/custom_ui/resume_card.dart';
import 'package:resume_builder/screen/userdata.dart';

import '../modals/data.dart';

// ignore: must_be_immutable
class ResumeScreen extends StatefulWidget {
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
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  // for image
  Uint8List? _image;
  File? selectedIMage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.black)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
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
                          padding: const EdgeInsets.all(20.0),
                          child: InkWell(
                              onTap: () {
                                showImagePickerOption(context);
                              },
                              child: _image != null
                                  ? Container(
                                      width: mq.width * .35,
                                      height: mq.height * .2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: MemoryImage(_image!),
                                              fit: BoxFit.cover)))
                                  : Container(
                                      width: mq.width * .35,
                                      height: mq.height * .2,
                                      color: Colors.grey.shade400,
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add_a_photo,
                                            size: 30,
                                          ),
                                          Text(
                                            'Click Here To add photo',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      ),
                                    )),
                        ),

                        // Mobile No.

                        ResumeCard(
                          text: widget.input.phone,
                          leading: const Icon(Icons.phone_iphone_rounded),
                          leadtext: '',
                        ),

                        // for email id
                        ResumeCard(
                          text: widget.input.email,
                          leading: const Icon(Icons.email),
                          leadtext: '',
                        ),

                        // for address
                        if (widget.input.address.isNotEmpty)
                          ResumeCard(
                            text: widget.input.address,
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
                        if (widget.input.dob.isNotEmpty)
                          DetailCard(
                            text: widget.input.dob,
                            lead: 'DOB :',
                          ),

                        // for nationallity
                        if (widget.input.nation.isNotEmpty)
                          DetailCard(
                            text: widget.input.nation,
                            lead: 'Nationality :',
                          ),

                        // for Status
                        if (widget.input.status.isNotEmpty)
                          DetailCard(
                            text: widget.input.status,
                            lead: 'Marital Status :',
                          ),

                        SizedBox(
                          height: mq.height * .02,
                        ),
                        // for Skills
                        if (widget.about.skills.isNotEmpty)
                          Header(info: '-SKILLS'),

                        // for adding skills

                        if (widget.about.skills.isNotEmpty)
                          ResumeCard(
                            text: widget.about.skills,
                            leadtext: '',
                          ),

                        SizedBox(
                          height: mq.height * .01,
                        ),
                        //Hobbies
                        if (widget.about.hobbies.isNotEmpty)
                          Header(
                            info: 'HOBBIES',
                            leading:
                                const Icon(Icons.play_circle_outline_outlined),
                          ),

                        if (widget.about.hobbies.isNotEmpty)
                          ResumeCard(
                            text: widget.about.hobbies,
                            leadtext: '',
                          ),

                        SizedBox(
                          height: mq.height * .01,
                        ),
                        //Strength
                        if (widget.about.strength.isNotEmpty)
                          Header(
                            info: 'STRENGTHS',
                            leading: const Icon(Icons.power_outlined),
                          ),

                        if (widget.about.strength.isNotEmpty)
                          ResumeCard(
                            text: widget.about.strength,
                            leadtext: '',
                          ),

                        SizedBox(
                          height: mq.height * .01,
                        ),
                        //WEAKNess
                        if (widget.about.weakness.isNotEmpty)
                          Header(
                            info: 'WEAKNESS',
                            leading: const Icon(Icons.power_off_outlined),
                          ),

                        if (widget.about.weakness.isNotEmpty)
                          ResumeCard(
                            text: widget.about.weakness,
                            leadtext: '',
                          ),

                        SizedBox(
                          height: mq.height * .01,
                        ),

                        // for Languages

                        Header(info: '-LANGUAGES'),

                        if (widget.about.languages.isNotEmpty)
                          ResumeCard(
                            text: widget.about.languages,
                            leadtext: '',
                          ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: mq.width * .02,
                  ),

                  // Right Side resume

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey)),
                    width: mq.width * .9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      // for education detail and self info
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // name
                              Text(
                                widget.input.name,
                                style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              // profession
                              if (widget.input.profession.isNotEmpty)
                                Text(
                                  widget.input.profession,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                )
                            ],
                          ),
                        ),

                        // for about yourself
                        if (widget.about.about.isNotEmpty)
                          ResumeCard(
                            text: widget.about.about,
                            leading: const Icon(Icons.person),
                            leadtext: '',
                          ),

                        // Hobbies

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,

                          // For Image and contact detail
                          children: [
                            Header(
                              info: 'EDUCATION',
                              leading:
                                  const Icon(Icons.cast_for_education_outlined),
                            ),
                            if (widget.education10.standard.isNotEmpty)
                              Container(
                                margin: const EdgeInsets.all(4),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 156, 179, 214),
                                )),
                                child: Column(
                                  children: [
                                    Education(
                                        leadtext: 'Class :',
                                        text: widget.education10.standard),
                                    Education(
                                        text: widget.education10.year,
                                        leadtext: 'Year :'),
                                    Education(
                                        text: widget.education10.school,
                                        leadtext: 'School :'),
                                    Education(
                                        text: widget.education10.board,
                                        leadtext: 'Board :'),
                                    Education(
                                        text: widget.education10.result,
                                        leadtext: 'Result :'),
                                  ],
                                ),
                              ),
                            SizedBox(
                              height: mq.height * .01,
                            ),

                            if (widget.education12.standard.isNotEmpty)
                              Container(
                                margin: const EdgeInsets.all(4),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 156, 179, 214),
                                )),
                                child: Column(
                                  children: [
                                    Education(
                                        leadtext: 'Class :',
                                        text: widget.education12.standard),
                                    Education(
                                        text: widget.education12.year,
                                        leadtext: 'Year :'),
                                    Education(
                                        text: widget.education12.school,
                                        leadtext: 'School :'),
                                    Education(
                                        text: widget.education12.board,
                                        leadtext: 'Board :'),
                                    Education(
                                        text: widget.education12.result,
                                        leadtext: 'Result :'),
                                  ],
                                ),
                              ),

                            // Under GRADUATION
                            if (widget.graduationUg.course.isNotEmpty)
                              Container(
                                margin: const EdgeInsets.all(4),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 156, 179, 214),
                                )),
                                child: Column(
                                  children: [
                                    Education(
                                        leadtext: 'Course :',
                                        text: widget.graduationUg.course),
                                    Education(
                                        text: widget.graduationUg.year,
                                        leadtext: 'Year :'),
                                    Education(
                                        text: widget.graduationUg.institute,
                                        leadtext: 'Institute :'),
                                    Education(
                                        text: widget.graduationUg.university,
                                        leadtext: 'University :'),
                                    Education(
                                        text: widget.graduationUg.result,
                                        leadtext: 'Result :'),
                                  ],
                                ),
                              ),

                            // POST GRADUATION
                            if (widget.graduationPg.course.isNotEmpty)
                              Container(
                                margin: const EdgeInsets.all(4),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 156, 179, 214),
                                )),
                                child: Column(
                                  children: [
                                    Education(
                                        leadtext: 'Course :',
                                        text: widget.graduationPg.course),
                                    Education(
                                        text: widget.graduationPg.year,
                                        leadtext: 'Year :'),
                                    Education(
                                        text: widget.graduationPg.institute,
                                        leadtext: 'Institute :'),
                                    Education(
                                        text: widget.graduationPg.university,
                                        leadtext: 'University :'),
                                    Education(
                                        text: widget.graduationPg.result,
                                        leadtext: 'Result :'),
                                  ],
                                ),
                              ),

                            // Diploma
                            if (widget.diploma.course.isNotEmpty)
                              Container(
                                margin: const EdgeInsets.all(4),
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 156, 179, 214),
                                )),
                                child: Column(
                                  children: [
                                    Education(
                                        leadtext: 'Course :',
                                        text: widget.diploma.course),
                                    Education(
                                        text: widget.diploma.year,
                                        leadtext: 'Year :'),
                                    Education(
                                        text: widget.diploma.institute,
                                        leadtext: 'Institute :'),
                                    Education(
                                        text: widget.diploma.university,
                                        leadtext: 'University :'),
                                    Education(
                                        text: widget.diploma.result,
                                        leadtext: 'Result :'),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  // image picker

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue[100],
        context: context,
        builder: (builder) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromGallery();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.image,
                              size: 70,
                            ),
                            Text("Gallery")
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _pickImageFromCamera();
                      },
                      child: const SizedBox(
                        child: Column(
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 70,
                            ),
                            Text("Camera")
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

//Gallery
  Future _pickImageFromGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop(); //close the model sheet
  }

//Camera
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedIMage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop();
  }
}
