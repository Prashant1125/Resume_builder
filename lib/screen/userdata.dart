import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/input_card.dart';
import 'package:resume_builder/modals/data.dart';

import 'resume.dart';

// for getting device height and width
late Size mq;

class UserDataInput extends StatefulWidget {
  const UserDataInput({super.key});

  @override
  State<UserDataInput> createState() => _UserDataInputState();
}

class _UserDataInputState extends State<UserDataInput> {
  // for Taking Input By the user

  // Personal info of user
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _dateofbirth = TextEditingController();
  final TextEditingController _status = TextEditingController();

  // About detail of user
  final TextEditingController _about = TextEditingController();
  final TextEditingController _strength = TextEditingController();
  final TextEditingController _weakness = TextEditingController();
  final TextEditingController _hobbies = TextEditingController();
  final TextEditingController _languages = TextEditingController();
  final TextEditingController _skills = TextEditingController();

  // Education detail of user of 10th
  final TextEditingController _standard = TextEditingController();
  final TextEditingController _board = TextEditingController();
  final TextEditingController _school = TextEditingController();
  final TextEditingController _result = TextEditingController();
  final TextEditingController _year = TextEditingController();

  // Education detail of user of 12th
  final TextEditingController _standard12 = TextEditingController();
  final TextEditingController _board12 = TextEditingController();
  final TextEditingController _school12 = TextEditingController();
  final TextEditingController _result12 = TextEditingController();
  final TextEditingController _year12 = TextEditingController();

  // Education detail of user under graduation
  final TextEditingController _courseug = TextEditingController();
  final TextEditingController _universityug = TextEditingController();
  final TextEditingController _instituteug = TextEditingController();
  final TextEditingController _resultug = TextEditingController();
  final TextEditingController _yearug = TextEditingController();

  // Education detail of user Post graduation
  final TextEditingController _coursepg = TextEditingController();
  final TextEditingController _universitypg = TextEditingController();
  final TextEditingController _institutepg = TextEditingController();
  final TextEditingController _resultpg = TextEditingController();
  final TextEditingController _yearpg = TextEditingController();
  // for validation
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // for getting device height and width
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: const Text('Resume Builder'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text('Personal Detail'),
              InputCard(
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Please , Enter your name ";
                  }
                  return null;
                },
                controller: _name,
                hintText: "Enter Name",
                type: TextInputType.name,
                text: 'Name',
              ),
              InputCard(
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Please , Enter your mobile no. ";
                  }
                  return null;
                },
                controller: _phone,
                hintText: "Enter Mobile No.",
                type: TextInputType.number,
                text: 'Phone',
              ),
              InputCard(
                validator: (p0) {
                  if (p0!.isEmpty) {
                    return "Please , Enter your Email";
                  }
                  return null;
                },
                controller: _email,
                hintText: "Enter Email - xyz123@gmail.com",
                type: TextInputType.emailAddress,
                text: 'Email',
              ),
              InputCard(
                controller: _address,
                hintText: "Eg--> Vill ,Post ,Teh. ,Dis. ,Sta ,Pin",
                type: TextInputType.streetAddress,
                text: 'Address',
              ),
              InputCard(
                controller: _dateofbirth,
                hintText: "Date / Month / Year",
                type: TextInputType.datetime,
                text: 'Date Of Birth',
              ),
              InputCard(
                controller: _status,
                hintText: "Eg--> Single , Married",
                type: TextInputType.text,
                text: 'Marital Status',
              ),

              // About detail
              const Text('About Detail'),

              InputCard(
                controller: _about,
                hintText:
                    "Eg--> Recent computer science under graduate with a strong academic record and a passion for software development.",
                type: TextInputType.text,
                text: 'About Yourself',
              ),
              InputCard(
                controller: _hobbies,
                hintText: "Playing Cricket , Singing Song , Coding .....",
                type: TextInputType.text,
                text: 'Hobbies',
              ),
              InputCard(
                controller: _languages,
                hintText: "Hindi , English etc .....",
                type: TextInputType.text,
                text: 'Language Known',
              ),
              InputCard(
                controller: _strength,
                hintText: "Self Confidence , Hard-Working .....",
                type: TextInputType.text,
                text: 'Strength',
              ),
              InputCard(
                controller: _weakness,
                hintText: "Hesitation , Difficulty asking questions",
                type: TextInputType.text,
                text: 'Weakness',
              ),
              InputCard(
                controller: _skills,
                hintText: "Computer , Devloper , Speaker",
                type: TextInputType.text,
                text: 'Skills',
              ),

              // Education detail of 10th
              const Text('10th Detail'),

              InputCard(
                controller: _standard,
                hintText: "10TH",
                type: TextInputType.text,
                text: 'Class',
              ),
              InputCard(
                controller: _board,
                hintText: "MP Board",
                type: TextInputType.text,
                text: 'Board/University',
              ),
              InputCard(
                controller: _school,
                hintText: "Govt School Of Excellence Narsinghpur MP",
                type: TextInputType.text,
                text: 'School',
              ),
              InputCard(
                controller: _result,
                hintText: "90.4%",
                type: TextInputType.text,
                text: 'Result',
              ),
              InputCard(
                controller: _year,
                hintText: "2020-2021",
                type: TextInputType.text,
                text: 'Year of Passing',
              ),

              //Education detail of 12th
              const Text('12th Detail'),

              InputCard(
                controller: _standard12,
                hintText: "12TH",
                type: TextInputType.text,
                text: 'Class',
              ),
              InputCard(
                controller: _board12,
                hintText: "MP Board",
                type: TextInputType.text,
                text: 'Board/University',
              ),
              InputCard(
                controller: _school12,
                hintText: "Govt School Of Excellence Narsinghpur MP",
                type: TextInputType.text,
                text: 'School',
              ),
              InputCard(
                controller: _result12,
                hintText: "90.4%",
                type: TextInputType.text,
                text: 'Result',
              ),
              InputCard(
                controller: _year12,
                hintText: "2020-2021",
                type: TextInputType.text,
                text: 'Year of Passing',
              ),

              //Education detail of Ug
              const Text('Ug Detail (If you have )'),
              InputCard(
                controller: _courseug,
                hintText: "Btech/BA/Bcom",
                type: TextInputType.text,
                text: 'Course',
              ),
              InputCard(
                controller: _instituteug,
                hintText: "Rdvv University",
                type: TextInputType.text,
                text: 'Board/University',
              ),
              InputCard(
                controller: _universityug,
                hintText: "Rdvv University",
                type: TextInputType.text,
                text: 'Board/University',
              ),
              InputCard(
                controller: _resultug,
                hintText: "56%",
                type: TextInputType.text,
                text: 'Result',
              ),
              InputCard(
                controller: _yearug,
                hintText: "2024-2028",
                type: TextInputType.text,
                text: 'year of passing',
              ),

              //Education detail of Pg
              const Text('Pg Detail  (If you have )'),
              InputCard(
                controller: _coursepg,
                hintText: "Mtech/MA/Mcom",
                type: TextInputType.text,
                text: 'Course',
              ),
              InputCard(
                controller: _instituteug,
                hintText: "Rdvv University",
                type: TextInputType.text,
                text: 'Board/University',
              ),
              InputCard(
                controller: _universitypg,
                hintText: "Rdvv University",
                type: TextInputType.text,
                text: 'Board/University',
              ),
              InputCard(
                controller: _resultpg,
                hintText: "56%",
                type: TextInputType.text,
                text: 'Result',
              ),
              InputCard(
                controller: _yearpg,
                hintText: "2024-2026",
                type: TextInputType.text,
                text: 'year of passing',
              ),

              // Button
              SizedBox(
                height: mq.height * .015,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ResumeScreen(
                                // persona; info

                                input: PersonalInfo(
                                    address: _address.text,
                                    dob: _dateofbirth.text,
                                    email: _email.text,
                                    name: _name.text,
                                    phone: _phone.text,
                                    status: _status.text),

                                // about info
                                about: About(
                                    about: _about.text,
                                    strength: _strength.text,
                                    weakness: _weakness.text,
                                    hobbies: _hobbies.text,
                                    languages: _languages.text,
                                    skills: ''),

                                // education detail 10th
                                education10: Education10(
                                    standard: _standard.text,
                                    board: _board.text,
                                    school: _school.text,
                                    result: _result.text,
                                    year: _year.text),

                                // education detail 10th
                                education12: Education12(
                                    standard: _standard12.text,
                                    board: _board12.text,
                                    school: _school12.text,
                                    result: _result12.text,
                                    year: _year12.text),

                                // education detail ug

                                graduationUg: GraduationUg(
                                    course: _courseug.text,
                                    university: _universityug.text,
                                    result: _resultug.text,
                                    year: _yearug.text,
                                    institute: _instituteug.text),

                                // education detail Pg

                                graduationPg: GraduationPg(
                                    course: _coursepg.text,
                                    university: _universitypg.text,
                                    result: _resultpg.text,
                                    year: _yearpg.text,
                                    institute: _institutepg.text),
                              )));
                    }
                    // String name = nameController.text;
                  },
                  child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
