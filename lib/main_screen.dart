// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rabo/navbar_key.dart';
import 'package:rabo/screens/account.dart';
import 'package:rabo/screens/cart.dart';
import 'package:rabo/screens/feed.dart';
import 'package:rabo/screens/home.dart';
import 'package:rabo/screens/message.dart';

// ignore: use_key_in_widget_constructors
class MainScreen extends StatefulWidget {
   @override
  _MainScreen createState() => _MainScreen();
  }
  class _MainScreen extends State<MainScreen> {
  int selectedIndex = 0;
  final screen = [HomeScreen(), FeedScreen(), MessageScreen(), CartScreen(), AccountScreen()];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        key: NavbarKey.getKey(),
        items: [
          // Icons(Icons.home, size: 30),
          Icon(Icons.message, size: 30, color: Color.fromRGBO(0, 200, 151, 1),),
          Icon(Icons.feedback, size: 30),
          Icon(Icons.settings, size: 30), 
          ElevatedButton(child: Icon(Icons.account_circle, size: 30,),onPressed: null, ),
        ],
        onTap:(index){
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
        buttonBackgroundColor: Color.fromRGBO(0, 200, 151, 1),
        backgroundColor: Color.fromRGBO(0, 200, 151, 1),
        animationDuration: const Duration(milliseconds: 300),

      ),
      body: screen[selectedIndex],
    );
  }
}