// ignore_for_file: deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:fluttyer_portfoli/image_widget.dart';
import 'package:fluttyer_portfoli/splash_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.dart';
import 'projects.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Soho'),
      initialRoute: '/splash',
      debugShowCheckedModeBanner: false,
      routes: {
        '/project': (context) => const MyProject(),
        '/': (context) => const MyHome(),
        '/about': (context) => const MyApp(),
        '/splash': (context) => SplashScreen()
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(
                    Rect.fromLTRB(
                      0,
                      0,
                      rect.width,
                      rect.height,
                    ),
                  );
                },
                blendMode: BlendMode.dstIn,
                child: MyCustomWidget(),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Madaliyev Hikmatillo',
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                  TypewriterAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    text: const [
                      "There are no insurmountable problems, it just takes some time...",
                    ],
                    speed: const Duration(milliseconds: 100),
                    textStyle: const TextStyle(
                      fontSize: 28.0,
                      fontFamily: "Agne",
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),
                      child: const Text('Contact me'),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
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
      // body: Container(
      //   alignment: Alignment.center,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //         height: 40,
      //       ),
      //       ShaderMask(
      //         shaderCallback: (rect) {
      //           return LinearGradient(
      //             begin: Alignment.center,
      //             end: Alignment.bottomCenter,
      //             colors: [Colors.black, Colors.transparent],
      //           ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
      //         },
      //         blendMode: BlendMode.dstIn,
      //         child: Image.asset(
      //           'assests/bnw.png',
      //           height: 400,
      //           fit: BoxFit.contain,
      //         ),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Text(
      //         'Hello I am',
      //         style: TextStyle(color: Colors.white, fontSize: 30),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text('Siddharth Chopra',
      //           style: TextStyle(color: Colors.white, fontSize: 40)),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         'Software Developer',
      //         style: TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       SizedBox(
      //         child: TextButton(
      //           onPressed: () {},
      //           child: Text('Hire Me'),
      //           style: TextButton.styleFrom(
      //             primary: Colors.black,
      //             backgroundColor: Colors.white, // Background Color
      //           ),
      //         ),
      //         width: 120,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
