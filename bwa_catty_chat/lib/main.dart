import 'package:bwa_catty_chat/theme.dart';
import 'package:flutter/material.dart';
import 'package:bwa_catty_chat/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        backgroundColor: pageColor,
      ),
      home: HomePage(),
    );
  }
}