import 'package:flutter/material.dart';
import 'package:bwa_catty/theme.dart';

class ChatTile extends StatelessWidget {

  final imageUrl;
  final name;
  final text;
  final time;
  final unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
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
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread ? subTitleTextStyle.copyWith(
                  color: blackColor,
                ) : subTitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTitleTextStyle,
          )
        ],
      ),
    );
  }
}