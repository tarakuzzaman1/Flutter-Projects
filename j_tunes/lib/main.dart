import 'package:flutter/material.dart';
import 'package:j_tunes/pages/MyPlayingSong.dart';
import 'pages/MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: MyHomePage(),
    );
  }
}
