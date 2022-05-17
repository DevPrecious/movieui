// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Color(0xff292934),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.search_sharp,
                color: Colors.grey,
                size: 40,
              ),
              hintText: 'Search',
            ),
          ),
        ),
      ),
    );
  }
}
