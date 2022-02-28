import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class MainPage extends StatelessWidget {
  MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent(){
      return HomePage();
    }

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_home.png",
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_booking.png",
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_cart.png",
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imageUrl: "assets/images/icon_setting.png",
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Stack(
        children: [
          buildContent(),
          customButtomNavigation(),
        ],
      )
    );
  }
}