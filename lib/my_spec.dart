import 'package:flutter/material.dart';

mySpec(icon, text, double _w) {
  return SizedBox(
    height: 115,
    width: 105,
    child: Card(
      margin: const EdgeInsets.all(0),
      color: const Color(0xff252525),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: _w / 30, left: _w / 60, right: _w / 60),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 60,
              spreadRadius: 20,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "Soho",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
