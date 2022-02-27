import 'dart:async';

import 'package:airplane/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class SplachPage extends StatefulWidget {
  SplachPage({ Key? key }) : super(key: key);

  @override
  State<SplachPage> createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 50),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/icon_plane.png',
                  )
                ),
              ),
            ),
            Text(
              "AIRPLANE",
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10.8,
              ),
            )
          ],
        ),
      ),
    );
  }
}