import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile_post.dart';
import 'package:instagram/widgets/status_high_light.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Instagram",
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {}, 
              icon: Icon(
                Icons.favorite_border,
              )
            ),
            IconButton(
              onPressed: () {}, 
              icon: Icon(
                Icons.chat_outlined
              )
            ),
          ],
        )
      );
    }

    Widget statusHighLight(){
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 8),
                color: Colors.black,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //   image: AssetImage(
                  //     '',
                  //   )
                  // )
                ),
              ),
              StatusHighLight(
                unread: false,
                width: 70,
                height: 70,
              ),
              StatusHighLight(
                unread: true,
                width: 70,
                height: 70,
              ),
              StatusHighLight(
                unread: true,
                width: 70,
                height: 70,
              ),
              StatusHighLight(
                unread: true,
                width: 70,
                height: 70,
              ),
              StatusHighLight(
                unread: true,
                width: 70,
                height: 70,
              ),
            ],
          ),
        ),
      );
    }

    Widget populerPost() {
      return Container(
        width: double.infinity,
        child: Column(
          children: [
            ProfilePost(
              name: "mobilelegendsguard",
              unread: true,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.amberAccent,
              // decoration: BoxDecoration(
              //   image: DecorationImage(
              //     image: AssetImage(
              //       "",
              //     )
              //   )
              // ),
              child: Icon(Icons.volume_up_rounded),
            ),
            Row(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(
                      Icons.favorite_border
                    ),),
                    IconButton(onPressed: () {}, icon: Icon(
                      Icons.messenger_outline_sharp
                    ),),
                    IconButton(onPressed: () {}, icon: Icon(
                      Icons.send_outlined
                    ),)
                  ],
                ),
                IconButton(onPressed: () {}, icon: Icon(
                  Icons.filter_none_sharp
                ))
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          header(),
          statusHighLight(),
          populerPost(),

        ],
      ),
    );
  }
}