import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.dart';
import 'projects.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Soho'),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/project': (context) => const MyProject(),
      '/': (context) => const MyHome(),
      '/about': (context) => const MyApp(),
    },
  ));
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
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 60),
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: Center(
                child: Image.asset(
                  'assests/bnw.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.55),
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
                const Text('Madaliyev Hikmatillo',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Software Developer',
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
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
