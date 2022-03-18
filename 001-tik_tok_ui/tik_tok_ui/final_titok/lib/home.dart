import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget get topSection => Container(
        height: 100.0,
        padding: const EdgeInsets.only(bottom: 15.0),
        color: Colors.yellow[300],
      );

  Widget get videoDescription => Expanded(
        child: Container(
          color: Colors.green[300],
        ),
      );

  Widget get actionsToolbar => Container(
        width: 100.0,
        color: Colors.red[300],
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[videoDescription, actionsToolbar],
        ),
      );
  Widget get bottomSection => Container(height: 80.0, color: Colors.blue[300]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          // Top section
          topSection,

          // Middle expanded
          middleSection,

          // Bottom Section
          const BottomAppBar(),
        ],
      ),
    );
  }
}
