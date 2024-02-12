import 'package:flutter/material.dart';
import 'package:resume_builder/custom_ui/input_card.dart';

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
        child: Column(
          children: [
            const Text('Personal Information'),
            InputCard(
              controller: _name,
              hintText: "Enter Name",
              type: TextInputType.name,
              text: 'Name',
            ),
            SizedBox(
              height: mq.height * .015,
            ),
            InputCard(
              controller: _phone,
              hintText: "Enter Mobile No.",
              type: TextInputType.number,
              text: 'Phone',
            ),
            SizedBox(
              height: mq.height * .015,
            ),
            InputCard(
              controller: _email,
              hintText: "Enter Email",
              type: TextInputType.emailAddress,
              text: 'Email',
            ),
            SizedBox(
              height: mq.height * .015,
            ),
            InputCard(
              controller: _address,
              hintText: "Eg--> Vill ,Post ,Teh. ,Dis. ,Sta ,Pin",
              type: TextInputType.streetAddress,
              text: 'Address',
            ),
            ElevatedButton(
                onPressed: () {
                  // String name = nameController.text;

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ResumeScreen(
                            name: _name.text,
                            phone: _phone.text,
                            email: _email.text,
                            address: _address.text,
                          )));
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
