// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:movieui/utils/cat.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Cat(
                emoji: '🎃',
                title: 'Scarry',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Cat(
                      emoji: '😎',
                      title: 'Action',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Cat(
                      emoji: '🌞',
                      title: 'Love',
                    ),
                  ],
                ),
              ),
              Cat(
                emoji: '🌐',
                title: 'Fantasy',
              ),
            ],
          )
        ],
      ),
    );
  }
}
