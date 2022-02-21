import 'package:flutter/material.dart';
import 'package:bwa_catty_chat/theme.dart';

class ChatMe extends StatelessWidget {

  final image;
  final text;
  final time;

  ChatMe({this.image, this.text, this.time});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 11,
                  horizontal: 19,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  color: whiteColor
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      text,
                      style: chatTextStyle
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      time,
                      style: timeTextStyle,
                    )
                  ],
                )
              ),
              SizedBox(
                width: 12,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  image: DecorationImage(
                    image: AssetImage(
                      image,
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ],
          ), 
        ],
      )
    );
  }
}