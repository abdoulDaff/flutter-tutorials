import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget get topSection => Container(
        height: 100.0,
        padding: const EdgeInsets.only(bottom: 15.0),
        color: Colors.yellow[300],
      );

  Widget get videoDescription => Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 10.0,
                color: Colors.green[300],
                margin: const EdgeInsets.only(top: 10)),
            Container(
                height: 10.0,
                color: Colors.green[300],
                margin: const EdgeInsets.only(top: 10)),
            Container(
                height: 10.0,
                color: Colors.green[300],
                margin: const EdgeInsets.only(top: 10))
          ],
        ),
      );

  Widget get actionsToolbar => Container(
        width: 100.0,
        color: Colors.red[300],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(
              5,
              (index) => Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue[300],
                  margin: const EdgeInsets.only(top: 20.0))),
        ),
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[videoDescription, actionsToolbar],
        ),
      );
  Widget get bottomSection => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(
          5,
          (index) => Container(
            width: 40.0,
            height: 40.0,
            color: Colors.purple[300],
          ),
        ),
      );

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
