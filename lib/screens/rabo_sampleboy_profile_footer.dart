import 'package:rabo/main.dart';
import 'package:flutter/material.dart';
import 'package:rabo/screens/rabo_sampleboy_profile_details.dart';

class ProfileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _act = 1;
    return Container(
        margin: EdgeInsets.only(top: 20),
        color: Color.fromARGB(250, 235, 255, 250),
        child:
            // Scaffold(
            //     backgroundColor: Color.fromARGB(255, 146, 207, 194),
            //     body:
            ListView(
          children: [
            Padding(padding: EdgeInsets.only(left: 5, right: 0)),
            Card(
                color: Color.fromARGB(255, 7, 177, 101),
                child: ListTile(
                  trailing: Icon(Icons.list_alt),
                  // contentPadding: EdgeInsets.only(left: 0, right: 0),
                  title: Text("Orders"),

                  enabled: _act == 2,
                  subtitle: _act != 2
                      ? Text("Check your ongoing, upcoming and past orders")
                      : null,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MemberProfile()));
                  },
                  // dense: true,
                )),
            Card(
                color: Color.fromARGB(255, 7, 177, 101),
                child: ListTile(
                    trailing: Icon(Icons.payment),
                    title: Text("Payments"),
                    subtitle: Text("Check your payment settlements"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MemberProfile()));
                    })),
            Card(
                color: Color.fromARGB(255, 7, 177, 101),
                child: ListTile(
                    trailing: Icon(Icons.quiz),
                    title: Text("FAQ"),
                    subtitle: Text("Frequently Asked Questions"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MemberProfile()));
                    })),
            Card(
              color: Color.fromARGB(255, 7, 177, 101),
              child: ListTile(
                trailing: Icon(Icons.info),
                title: Text("About"),
                subtitle: Text("Know about our work and our proceedings."),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MemberProfile()));
                },
              ),
            )
          ],
          // padding: EdgeInsets.only(top: 50),
          shrinkWrap: true,
        )
        // )
        );
  }
}
//       margin: new EdgeInsets.all(30),
//       child: Column(
//         children: <Widget>[
//           Container(
//             width: double.maxFinite,
//             height: 100,
//             child: TextButton(
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => MemberProfile()));
//                 },
//                 child: Text(
//                   "About",
//                   style: TextStyle(fontSize: 20),
//                 )),
//           ),
//           Container(
//               child: TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => MemberProfile()));
//                   },
//                   child: Text(
//                     "FAQ",
//                     style: TextStyle(fontSize: 20),
//                   )))
//         ],
//       ),
//     ));
//   }
// }
