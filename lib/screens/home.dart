// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieui/screens/category.dart';
import 'package:movieui/screens/search.dart';
import 'dart:math';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1C27),
      appBar: AppBar(
        backgroundColor: Color(0xff1C1C27),
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, precious 👋',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            Text(
              'Let\'s relax and watch a movie!',
              style: GoogleFonts.lato(),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xff1C1C27),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Search(),
            Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    'See all >',
                    style: TextStyle(
                        color: Color(0xffFFB43A),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 100.0,
              child: Category(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Showing this month',
                    style: GoogleFonts.lato(fontSize: 17),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 260,
                height: 300,
                child: AspectRatio(
                  aspectRatio: 1 / 2,
                  child: PageView(
                    controller: _controller,
                    physics: ClampingScrollPhysics(),
                    // pageSnapping: true,
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Transform.rotate(
                        angle: pi / -40.0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.yayomg.com/wp-content/uploads/2015/04/yayomg-minions-comic-book.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / 40.0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/originals/7a/c1/01/7ac10196f7f4dda381eb263a2cb2f43f.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / -40.0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/originals/e2/f5/70/e2f570beec9d187eda839c538d5c7cd5.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / 40.0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/474x/80/a5/f4/80a5f481a7896c0da867458bb4ea5e72.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: pi / -40.0,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          // width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/en/thumb/d/d4/Uncharted_Official_Poster.jpg/220px-Uncharted_Official_Poster.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 5,
              effect: JumpingDotEffect(
                activeDotColor: Color(0xffFFB43A),
                dotColor: Colors.grey,
                verticalOffset: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color(0xff1C1C27),
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.explore,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_3x3,
                size: 30,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: ''),
        ],
      ),
    );
  }
}
