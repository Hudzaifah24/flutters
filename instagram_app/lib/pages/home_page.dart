import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  int _selectedIndex = 0; 
  
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
            Container(
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
            Spacer(),
            Container(
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
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
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
                            "assets/images/profile.jpeg",
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
                            "assets/images/profile.jpeg",
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
          ],
        ),
      );
    }

    Widget tabBars() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TabBar(
            tabs: [
              Tab(
                text: 'Incoming',
              ),
              Tab(
                text: 'Outgoing',
              ),
              Tab(
                text: 'Missed',
              ),
            ],
          )
        ],
      );
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              header(),
              aboutHeader(),
              aboutBody(),
              btnEdtPrfl(),
              highlight(),
              tabBars(),
              Scaffold(
                body: TabBarView(
                  children: [
                    Text(
                      "Page 1",
                    ),
                    Text(
                      "Page 2",
                    ),
                    Text(
                      "Page 3",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              tooltip: "Home",
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}