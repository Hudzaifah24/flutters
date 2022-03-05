import 'package:flutter/material.dart';

class StatusHighLight extends StatelessWidget {

  final bool unread;
  final String name;
  final double height;
  final double width;
  
  const StatusHighLight({ 
    Key? key,
    this.unread = false,
    required this.height,
    required this.width,
    this.name = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          margin: EdgeInsets.only(right: 8),
          color: Colors.white,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: unread ? Border.all(
              style: BorderStyle.solid,
              color: Colors.red,
              width: 2,
            ) : Border.all(
              style: BorderStyle.none
            )
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //   image: AssetImage(
            //     '',
            //   )
            // )
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          name,
        ),
      ],
    );
  }
}