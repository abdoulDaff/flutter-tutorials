import 'package:flutter/material.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        // Top Section
        Container(
          height: 100,
          color: Colors.yellow[300],
        ),
        // Middle Section
        Expanded(
          child: Container(
            color: Colors.green[300],
          ),
        ),
        // Bottom Section
        Container(
          height: 80.0,
          color: Colors.blue[300],
        ),
      ],
    ));
  }
}
