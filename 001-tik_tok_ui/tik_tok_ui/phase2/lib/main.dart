import 'package:flutter/material.dart';
import 'package:phase2/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // Uncomment in phase 3 to apply white to text
          // textTheme: Theme.of(context).textTheme.apply(
          //   bodyColor: Colors.white,
          //   displayColor: Colors.white
          // ),
          ),
      home: const Home(),
    );
  }
}
