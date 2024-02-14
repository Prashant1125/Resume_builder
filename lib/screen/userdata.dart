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
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _dateofbirth = TextEditingController();
  final TextEditingController _status = TextEditingController();
  final TextEditingController _about = TextEditingController();
  final TextEditingController _strength = TextEditingController();
  final TextEditingController _weakness = TextEditingController();
  final TextEditingController _hobbies = TextEditingController();
  final TextEditingController _languages = TextEditingController();
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
                    return "Please , Enter your name ";
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
                    return "Please , Enter your name";
                  }
                  return null;
                },
                controller: _email,
                hintText: "Enter Email",
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
              SizedBox(
                height: mq.height * .015,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ResumeScreen(
                                input: PersonalInfo(
                                    address: _address.text,
                                    dob: _dateofbirth.text,
                                    email: _email.text,
                                    name: _name.text,
                                    phone: _phone.text,
                                    status: _status.text),
                                about: About(
                                    about: _about.text,
                                    strength: _strength.text,
                                    weakness: _weakness.text,
                                    hobbies: _hobbies.text,
                                    languages: _languages.text),
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
