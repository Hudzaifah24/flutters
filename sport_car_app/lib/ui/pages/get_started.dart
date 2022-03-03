import 'package:flutter/material.dart';
import 'package:sport_car_app/shared/theme.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 100,
        ),
        width: double.infinity,
        // height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/get_started.jpg",
            ),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Text(
              "Find the ideal\nsport car for you",
              style: titleTextStyle,
            ),
            Text(
              "Get a great car at a great price.",
              style: whiteTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 10
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: darkBlueColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text(
                    "Get Started",
                    style: whiteTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: lightBlueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)
                      )
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Already have an account?",
                  style: whiteTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 7,
                  ),
                ),
                Text(
                  "Sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: yellowColor,
                    fontSize: 18,
                    textBaseline: TextBaseline.alphabetic
                  ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}