import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, star) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,

      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xff252525),
        title: const Text(
          'Projects',
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                'FLUTTER',
                'Gold Center',
                'Poytaxtadgi katta tilla markazi uchun dastur. Desktop, Mobile',
                '20',
              ),
              projetCard(
                'FLUTTER',
                'Coffee ui',
                'Qiziqishga qilingan ish',
                '2',
              ),
              projetCard(
                'FLUTTER',
                'Medsage startup',
                'mGovAward uchun qilingan startup',
                '14',
              ),
              projetCard(
                'C++ Builder',
                'Mercato',
                'Magazinlar uchun CRM',
                '14',
              ),
              projetCard(
                'C++ Builder',
                'BUBINGO',
                'Mebel sohasida ishlab chiqarish uchun CRM',
                '14',
              ),
              projetCard(
                'C++ Builder',
                'Avto Zapchast',
                'Toshloqdagi avto zapchast uchun qilingan CRM dastur',
                '12',
              ),
              projetCard(
                'C++ Builder',
                'Avto Zapchast',
                'Toshloqdagi avto zapchast uchun qilingan CRM dastur',
                '12',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
