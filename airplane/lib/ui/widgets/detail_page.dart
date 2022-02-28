import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget backGroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/image_destination1.png",
            )
          )
        ),
      );
    }

    Widget customShadow(){
      return Container(
        height: 214,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 236
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ]
          )
        ),
      );
    }
    
    Widget content(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            // NOTE: EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/icon_emblem.png"
                  )
                )
              ),
            ),

            // NOTE: TITLE
            Container(
              margin: EdgeInsets.only(
                top: 256
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Tangerang",
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(
                          right: 2,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/icon_star.png",
                            )
                          )
                        ),
                      ),
                      Text(
                        "4.8",
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            
            // NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 30
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOTE: ABOUT
                  Text(
                    "About",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat bali.",
                    style: blackTextStyle.copyWith(
                      height: 2.6,
                    ),
                    overflow: TextOverflow.visible,
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
      body: Stack(
        children: [
          backGroundImage(),
          customShadow(),
          content(),
        ]
      )
    );
  }
}