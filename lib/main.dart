import 'package:flutter/material.dart';
import 'package:rabo/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      scaffoldBackgroundColor: Color.fromRGBO(235, 255, 250, 1),
      ),
      home: MainScreen(),
    );
  }
}
