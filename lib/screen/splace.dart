import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'userdata.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      //exit full screen
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent));
      // navigate home screen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const UserDataInput()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedPositioned(
              top: mq.height * .25,
              right: mq.width * .15,
              width: mq.width * .75,
              duration: const Duration(seconds: 2),
              child: Column(
                children: [
                  const Text(
                    'WELCOME TO',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.orange,
                        letterSpacing: .75,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: mq.width * 0.1,
                  ),
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
          Positioned(
              bottom: mq.height * .42,
              width: mq.width,
              child: Text(
                'RESUME BUILDER',
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: .75,
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
                textAlign: TextAlign.center,
              )),
          Positioned(
              bottom: mq.height * .15,
              width: mq.width,
              child: Text(
                'MADE BY PK WITH \n😇',
                style: TextStyle(
                    fontSize: 17,
                    letterSpacing: .75,
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
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
