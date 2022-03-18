import 'package:flutter/material.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget get topSection => Container(
        height: 100.0,
        padding: const EdgeInsets.only(bottom: 15.0),
        color: Colors.yellow[300],
      );

  Widget get middleSection => Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
            Expanded(child: Container(color: Colors.green[300])),
            Container(
              width: 100.0,
              color: Colors.red[300],
            )
          ]));

  Widget get bottomSection => Container(height: 80.0, color: Colors.blue[300]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top section
          topSection,

          // Middle expanded
          middleSection,

          // Bottom Section
          bottomSection,
        ],
      ),
    );
  }
}
