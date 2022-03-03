import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget route(){
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/checkout.png",
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CGK",
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold
                        ),
                      ),
                      Text(
                        "Tangerang",
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "TLC",
                        style: blackTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold
                        ),
                      ),
                      Text(
                        "Ciliwung",
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          route(),
        ],
      )
    );
  }
}