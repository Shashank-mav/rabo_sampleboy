// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rabo/navbar_key.dart';
import 'package:rabo/screens/account.dart';
import 'package:rabo/screens/feed.dart';
import 'package:rabo/screens/home.dart';
import 'package:rabo/screens/message.dart';

// ignore: use_key_in_widget_constructors
class MainScreen extends StatefulWidget {
   @override
  _MainScreen createState() => _MainScreen();
  }
  class _MainScreen extends State<MainScreen> {
  var selectedIndex = 0;
  final screen = [HomeScreen(), FeedScreen(), MessageScreen(),  AccountScreen()];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromRGBO(0, 200, 151, 0.6),
        height: 60,
        index: selectedIndex,
        key: NavbarKey.getKey(),
        items: [
          // Icons(Icons.home, size: 30),
<<<<<<< HEAD
          Icon(Icons.message, size: 30, color: Color.fromARGB(255, 8, 44, 27),),
          Icon(Icons.feedback, size: 30, color: Color.fromARGB(255, 8, 44, 27),),
          Icon(Icons.settings, size: 30, color: Color.fromARGB(255, 8, 44, 27),), 
          Icon(Icons.account_circle, size: 30, color: Color.fromARGB(255, 8, 44, 27),), 
=======
          Icon((selectedIndex==0) ? Icons.home : Icons.home, size: 30, color: Color.fromRGBO(0, 200, 151, 1),),
          Icon((selectedIndex==1) ? Icons.feedback: Icons.feedback, size: 30),
          Icon((selectedIndex==2) ? Icons.settings: Icons.settings, size: 30), 
          Icon((selectedIndex==2) ? Icons.account_circle: Icons.account_circle, size: 30,), 
>>>>>>> 368a7a69e6919d80bc33a15acd18b277460df70c
        ],
        onTap:(index){
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
        buttonBackgroundColor: Color.fromARGB(153, 0, 200, 151),
        backgroundColor: Color.fromRGBO(235, 255, 250, 1),
        animationDuration: const Duration(milliseconds: 300),

      ),
      body: screen[selectedIndex],
    );
  }
}