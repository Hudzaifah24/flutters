import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "nga_woer",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17
                  ),
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 25,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(
                    Icons.add_box_outlined,
                    size: 25,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.format_list_bulleted_sharp,
                    size: 25,
                  ),
                  onPressed: (){}, 
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget aboutHeader() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/profile.jpeg",
                    ),
                    fit: BoxFit.cover
                  )
                )
              ),
              Column(
                children: [
                  Text(
                    "25",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Postingan",
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "286",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Pengikut",
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    "249",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Mengikuti",
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget aboutBody() {
      return Container(
        padding: EdgeInsets.only(top: 15, right: 20, left: 20),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Non Alkohol",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "*punya bunegara",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "What do you mean? \nNama Pengguna lama : hu.dzaif",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget btnEdtPrfl() {
      return Container(
        padding: EdgeInsets.only(top: 15, right: 20, left: 20),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: OutlinedButton(
                  child: Text(
                    "Edit Profil",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.black,
                      fontSize: 16
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Container(
              width: 50,
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                left: 7,
              ),
              child: OutlinedButton(
                child: Icon(
                  Icons.person_add_outlined,
                  size: 20,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            )
          ],
        )
      );
    }

    Widget highlight() {
      return Container(
        padding: EdgeInsets.only(top: 15, right: 20, left: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                        width: 3,
                        style: BorderStyle.solid
                      )
                    ),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/highlight1.jpg",
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "hbd",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                        width: 3,
                        style: BorderStyle.solid
                      )
                    ),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/highlight2.jpg",
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "dirumah aja",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                        width: 3,
                        style: BorderStyle.solid
                      )
                    ),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/highlight3.jpg",
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "gamer",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                        width: 3,
                        style: BorderStyle.solid
                      )
                    ),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/highlight4.jpg",
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "jalan skuy",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                        width: 3,
                        style: BorderStyle.solid
                      )
                    ),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/highlight5.jpg",
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "kata:-D",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20
              ),
              Column(
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Colors.black12,
                        width: 3,
                        style: BorderStyle.solid
                      )
                    ),
                    child: FloatingActionButton(
                      onPressed: (){},
                      backgroundColor: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Baru",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20
              ),
            ],
          ),
        ),
      );
    }

    Widget postBar() {
      return Container(
        margin: EdgeInsets.only(
          top: 20
        ),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8
                  ),
                  child: Icon(
                    Icons.apps_outlined,
                    color: Colors.black,
                  ),
                ),
                // Container(
                //   width: 100,
                //   decoration: BoxDecoration(
                //     border: Border(
                //       bottom: BorderSide(
                //         color: Colors.black,
                //         width: 1.5,
                //       ),
                //     ),
                //   ),
                // ),
              ]
            ),
            Column(
              children: [
                Container(
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
                // Container(
                //   width: 100,
                //   decoration: BoxDecoration(
                //     border: Border(
                //       bottom: BorderSide(
                //         color: Colors.black,
                //         width: 1.5,
                //       ),
                //     ),
                //   ),
                // ),
              ]
            ),
            Column(
              children: [
                Container(
                  child: Icon(
                    Icons.perm_contact_calendar_rounded,
                    color: Colors.grey,
                  ),
                ),
                // Container(
                //   width: 100,
                //   decoration: BoxDecoration(
                //     border: Border(
                //       bottom: BorderSide(
                //         color: Colors.black,
                //         width: 1.5,
                //       ),
                //     ),
                //   ),
                // ),
              ]
            ),
          ],
        ),
      );
    }

    Widget posts() {
      return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post1.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post2.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post3.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post4.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post5.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post6.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post7.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post8.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post9.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post10.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post11.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post12.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post13.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post14.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post15.jpg",
                ),
              )
            ),
          ),
          Container(
            margin: EdgeInsets.all(1),
            width: 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/post16.jpg",
                ),
              )
            ),
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                header(),
                aboutHeader(),
                aboutBody(),
                btnEdtPrfl(),
                highlight(),
                postBar(),
                posts(),
              ],
            ),
          )
        ),
      ),
    );
  }
}