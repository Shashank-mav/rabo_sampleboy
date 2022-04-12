import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      //column 1
      Column(
        children: [
          Text("name"), // element 1
          Text("Phone number"), // element 2
          Row(children: [
            Text("Gender"), //element 3
            Text("Age"),
            Text("DOB")
          ]),
          Text("email"), // element 4
        ],
      ),
      Column(children: [
        //column 2
        Text("photo"),
        ElevatedButton(
          child: Text("edit"),
          onPressed: null,
        ),
      ] // children close of column 2
          )
    ]));
  }
}
