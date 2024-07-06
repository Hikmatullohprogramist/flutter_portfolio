import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'archivments_item.dart';
import 'my_spec.dart';

class GridViewAnimation extends StatefulWidget {
  const GridViewAnimation({super.key});

  @override
  _GridViewAnimationState createState() => _GridViewAnimationState();
}

class _GridViewAnimationState extends State<GridViewAnimation> {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('VIEW ANIMATING GRIDVIEW'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GridView1()),
            );
          },
        ),
      ),
    );
  }
}

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    int columnCount = 3;
    List<Widget> archivmentsList = [
      mySpec(FontAwesomeIcons.android, 'Android', _w),
      mySpec(FontAwesomeIcons.c, 'C++', _w),
      mySpec(FontAwesomeIcons.desktop, 'Desktop', _w),
      mySpec(FontAwesomeIcons.github, 'GitHub', _w),
      mySpec(FontAwesomeIcons.linux, 'Linux', _w),
      mySpec(FontAwesomeIcons.figma, 'Figma', _w),
      mySpec(FontAwesomeIcons.appStoreIos, 'iOS', _w),
      mySpec(FontAwesomeIcons.terminal, 'Scripting', _w),
      mySpec(FontAwesomeIcons.gamepad, 'Game Dev', _w),
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            aboutAchivements('30', ' Projects'),
            aboutAchivements('10', ' Clients'),
            aboutAchivements('100', ' Messages'),
          ],
        ),
        Expanded(
          child: AnimationLimiter(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: columnCount,
              ),
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: EdgeInsets.all(_w / 60),
              itemCount: archivmentsList.length,
              itemBuilder: (BuildContext context, int index) {
                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  columnCount: columnCount,
                  child: ScaleAnimation(
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: FadeInAnimation(
                      child: archivmentsList[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
