// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cat extends StatelessWidget {
  final String emoji;
  final String title;

  const Cat({Key? key, required this.emoji, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xff292934),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                emoji,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Text(
              title,
              style: GoogleFonts.lato(),
            ),
          ],
        ));
  }
}
