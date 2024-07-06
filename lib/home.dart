// ignore_for_file: avoid_types_as_parameter_names, deprecated_member_use

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:fluttyer_portfoli/image_widget.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

import 'gird_view_animation.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black12,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: const Icon(Icons.menu),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: TextButton(
                        child: const Text(
                          'Projects',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/project');
                        }),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: TextButton(
                        child: const Text(
                          'About Me',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/about',
                          );
                        }),
                  )
                ]),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ],
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
              Positioned(
                top: 420,
                child: Column(
                  children: [
                    ColorizeAnimatedTextKit(
                      repeatForever: true,
                      onTap: () {},
                      text: const [
                        "Hikmatulloh Madaliyev",
                      ],
                      textStyle: const TextStyle(
                        fontSize: 38.0,
                        fontFamily: "Horizon",
                      ),
                      colors: const [
                        Color.fromARGB(255, 138, 128, 128),
                        Color(0xff090909),
                        Color(0xffb7b7b7),
                        Color(0xff8c8c8c),
                        Color(0xff525252),
                        Color(0xff000000),
                      ],
                      textAlign: TextAlign.start,
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontFamily: 'Horizon',
                        color: Colors.white,
                      ),
                      child: AnimatedTextKit(
                        stopPauseOnTap: true,
                        repeatForever: true,
                        animatedTexts: [
                          RotateAnimatedText(
                            'Mobile app developer',
                          ),
                          RotateAnimatedText(
                            'Desktop developer',
                          ),
                          RotateAnimatedText(
                            'Flutter developer',
                          ),
                          RotateAnimatedText(
                            'C++ Builder developer',
                          ),
                          RotateAnimatedText(
                            'Web developer',
                          ),
                          RotateAnimatedText(
                            'System admin',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SlidingSheet(
              elevation: 12,
              cornerRadius: 50,
              extendBody: true,
              builder: (context, state) {
                return Container(
                  margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
                  height: 500,
                  child: const GridView1(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
