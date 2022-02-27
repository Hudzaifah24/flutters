import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class MainPage extends StatelessWidget {
  MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget customButtomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: 30, left: defaultMargin, right: defaultMargin,),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_home",
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_booking",
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_card",
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_setting",
                isSelected: false,
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             "assets/images/icon_home.png",
              //           ),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kPrimaryColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             "assets/images/icon_booking.png",
              //           ),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kTransparentColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             "assets/images/icon_card.png",
              //           ),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kTransparentColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(),
              //     Container(
              //       width: 24,
              //       height: 24,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(
              //             "assets/images/icon_setting.png",
              //           ),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       width: 30,
              //       height: 2,
              //       decoration: BoxDecoration(
              //         color: kTransparentColor,
              //         borderRadius: BorderRadius.circular(18),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Stack(
        children: [
          Text(
            "Main Page"
          ),
          customButtomNavigation(),
        ],
      )
    );
  }
}