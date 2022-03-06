import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/setting_page.dart';
import 'package:airplane/ui/pages/transaction_page.dart';
import 'package:airplane/ui/pages/wallet_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return TransactionPage();
          break;
        case 2:
          return WalletPage();
          break;
        case 3:
          return SettingPage();
          break;
        default:
          return HomePage();
      }
    }

    Widget customButtomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: "assets/images/icon_home.png",
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: "assets/images/icon_booking.png",
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: "assets/images/icon_cart.png",
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: "assets/images/icon_setting.png",
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
            backgroundColor: kBackGroundColor,
            body: Stack(
              children: [
                buildContent(currentIndex),
                customButtomNavigation(),
              ],
            ));
      },
    );
  }
}
