import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Contact Us",
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              SizedBox(
                height: mq.height * .04,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'NAMAMI',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Colors.pinkAccent,
                                  Colors.deepPurpleAccent,
                                  Colors.red
                                  //add more color here.
                                ],
                              ).createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                      ),
                      Text(
                        'ONLINE',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Colors.green,
                                  Colors.orange,
                                  Colors.orangeAccent,
                                  //add more color here.
                                ],
                              ).createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                      ),
                      Text(
                        'SERVICES',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            foreground: Paint()
                              ..shader = const LinearGradient(
                                colors: <Color>[
                                  Colors.red,
                                  Colors.blue,
                                  Colors.green

                                  //add more color here.
                                ],
                              ).createShader(
                                  const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                      )
                    ],
                  )),
              SizedBox(
                height: mq.height * .04,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Card(
                              elevation: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.orange.shade100),
                                    child: IconButton(
                                      onPressed: () {
                                        launchUrl(Uri.parse('tel:8815020822'));
                                      },
                                      icon: const Icon(
                                        Icons.phone,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text('Call Us',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Card(
                              elevation: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.green.shade100),
                                    child: IconButton(
                                      onPressed: () {
                                        launchUrl(Uri.parse(
                                            'mailto:NAMAMIONLINEKARELI@GMAIL.COM'));
                                      },
                                      icon: const Icon(
                                        Icons.mail,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text('Email Us',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height: 110,
                            width: 110,
                            child: Card(
                              elevation: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.red.shade100),
                                    child: IconButton(
                                      onPressed: () {
                                        launchUrl(Uri.parse(
                                            "https://www.instagram.com/chandrashekhar_patel_07793/"));
                                      },
                                      icon: const Icon(
                                        Icons.camera_alt,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text('Instragram',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            launchUrl(Uri.parse(
                                "https://chat.whatsapp.com/JlBvbEJlWBNGU4T0OPdrY8"));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: 120,
                              width: 160,
                              child: Card(
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.red.shade100),
                                      child: Image.asset(
                                          'assets/images/whatshapp.png'),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('Join Online Group',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            launchUrl(Uri.parse('sms:8815020822'));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: 120,
                              width: 160,
                              child: Card(
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: Colors.red.shade100),
                                      child: Image.asset(
                                          'assets/images/whatshapp.png'),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('Whatshapp',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mq.height * .07,
              ),
              Text(
                'Contact Us to Devloper',
                textAlign: TextAlign.center,
                style: TextStyle(
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 112, 105, 0),
                          Color.fromARGB(255, 161, 5, 5),
                          Color.fromARGB(255, 16, 187, 230),
                          Color.fromARGB(255, 4, 124, 8)

                          //add more color here.
                        ],
                      ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
              ),
              SizedBox(
                height: mq.height * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(
                            "https://www.facebook.com/profile.php?id=100028765277487"));
                      },
                      child: Image.asset(
                        'assets/images/facebook.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mq.height * .015,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(
                            "https://www.linkedin.com/in/prashant-kushwaha-4a014b243/"));
                      },
                      child: Image.asset(
                        'assets/images/linkdin.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mq.height * .015,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: InkWell(
                      onTap: () {
                        launchUrl(Uri.parse("https://github.com/Prashant1125"));
                      },
                      child: Image.asset(
                        'assets/images/github.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mq.height * .015,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: InkWell(
                      onTap: () {
                        launchUrl(Uri.parse('sms:9977676213'));
                      },
                      child: Image.asset(
                        'assets/images/whatshapp.png',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
