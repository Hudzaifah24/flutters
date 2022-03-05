import 'package:flutter/material.dart';

class ProfilePost extends StatelessWidget {

  final String name;
  final bool unread;
  
  const ProfilePost({ 
    Key? key,
    required this.name,
    this.unread = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          color: Colors.green,
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
          width: 5,
        ),
        Expanded(
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14
            ),
          ),
        ),
        IconButton(
          onPressed: () {}, 
          icon: Icon(Icons.more_vert),
        )
      ],
    );
  }
}