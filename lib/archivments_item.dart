import 'package:flutter/widgets.dart';

aboutAchivements(num, type) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        num + "+",
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "Soho",
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          type,
          style: const TextStyle(
            fontFamily: "Soho",
          ),
        ),
      ),
    ],
  );
}
