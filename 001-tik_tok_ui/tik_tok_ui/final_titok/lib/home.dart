import 'package:final_titok/widgets/actions_toolbar.dart';
import 'package:final_titok/widgets/bottom_toolbar.dart';
import 'package:final_titok/widgets/video_description.dart';
import 'package:flutter/material.dart';

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
          children: <Widget>[VideoDescription(), ActionsToolbar()]));

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
          BottomToolbar(),
        ],
      ),
    );
  }
}
