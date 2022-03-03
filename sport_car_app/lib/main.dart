import 'package:flutter/material.dart';
import 'package:sport_car_app/shared/theme.dart';
import 'package:sport_car_app/ui/pages/get_started.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => GetStarted(),
      },
    );
  }
}

