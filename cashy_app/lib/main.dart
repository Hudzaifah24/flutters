import 'package:flutter/material.dart';
import 'font_style.dart';
import 'custom_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static String bannerImage = 'assets/images/money.png';
  static String bannerTitle = 'Rich Togeder';
  static String bannerSubTitle = 'Save your money little bit and we will help \nto be rich.';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chasy'),
          backgroundColor: darkBlue,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.mail), color: Colors.white),
          ]
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 20.0, top: 0, right: 20.0, bottom: 0),
            padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage(bannerImage),
                    height: 180,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 4.0,
                    ),
                    child: Text(bannerTitle, style: mainHeader,),
                  ),
                  Text(bannerSubTitle, 
                    style: subHeader,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ]),
          )
        ),
      ),
    );
  }
}