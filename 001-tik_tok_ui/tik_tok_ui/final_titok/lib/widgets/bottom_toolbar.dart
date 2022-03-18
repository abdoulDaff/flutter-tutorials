import 'package:final_titok/tik_tok_icons_icons.dart';
import 'package:flutter/material.dart';

class BottomToolbar extends StatelessWidget {
  // ignore: constant_identifier_names
  static const double NavigationIconSize = 20.0;
  // ignore: constant_identifier_names
  static const double CreateButtonWidth = 38.0;

  const BottomToolbar({Key? key}) : super(key: key);

  Widget get customCreateIcon => SizedBox(
      width: 45.0,
      height: 27.0,
      child: Stack(children: [
        Container(
            margin: const EdgeInsets.only(left: 10.0),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 45, 108),
                borderRadius: BorderRadius.circular(7.0))),
        Container(
            margin: const EdgeInsets.only(right: 10.0),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 32, 211, 234),
                borderRadius: BorderRadius.circular(7.0))),
        Center(
            child: Container(
          height: double.infinity,
          width: CreateButtonWidth,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7.0)),
          child: const Icon(
            Icons.add,
            size: 20.0,
          ),
        )),
      ]));

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(TikTokIcons.home,
            color: Colors.white, size: NavigationIconSize),
        const Icon(TikTokIcons.search,
            color: Colors.white, size: NavigationIconSize),
        customCreateIcon,
        const Icon(TikTokIcons.messages,
            color: Colors.white, size: NavigationIconSize),
        const Icon(TikTokIcons.profile,
            color: Colors.white, size: NavigationIconSize)
      ],
    );
  }
}
