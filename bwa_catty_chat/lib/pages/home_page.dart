import 'package:flutter/material.dart';
import 'package:bwa_catty_chat/theme.dart';
import 'package:bwa_catty_chat/widgets/chat_friends.dart';
import 'package:bwa_catty_chat/widgets/chat_me.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.all(30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40)
          )
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/group1.png",
              width: 55,
              height: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jakarta Fair",
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "14,209 members",
                  style: subTitleTextStyle,
                )
              ],
            ),
            Spacer(),
            FloatingActionButton(
              backgroundColor: greenColor,
              mini: true,
              child: Icon(
                Icons.call,
                color: whiteColor,
                size: 25,
              ),
              onPressed: (){},
            )
          ],
        ),
      );
    }

    Widget body() {
      return Container(
        child: Column(
          children: <Widget>[
            ChatFriend(
              image: 'assets/images/friend1.png',
              text: "How are ya guys?",
              time: "2:30",
            ),
            ChatFriend(
              image: 'assets/images/friend3.png',
              text: "Find here :P",
              time: "3:11",
            ),
            ChatMe(
              image: "assets/images/me.png",
              text: "Thinking about how to deal with \nthis client from hell..", 
              time: "22:08", 
            ),
            ChatFriend(
              image: 'assets/images/friend2.png',
              text: "Love them",
              time: "23:11",
            ),
          ],
        )
      );
    }

    Widget chatInput() {
        return Container(
          width: MediaQuery.of(context).size.width - (2 * 30),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(75),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Type message ...',
                style: inputTextStyle
              ),
              Icon(
                Icons.send
                ),
            ],
          ),
        );
    }

    return Scaffold(
      backgroundColor: pageColor,
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}