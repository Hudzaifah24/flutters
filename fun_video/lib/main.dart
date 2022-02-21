import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHome(),
    title: "Fun Video",
  ));
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Fun videos and images'),
        actions: [
          IconButton(onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ),
          }, icon: Icon(Icons.login_sharp)),
        ],
      ),
      body: Center(
        child: Scrollbar(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return Card(
                child: Column(children: <Widget>[
                    Image.network(
                      'https://englishforsma.com/wp-content/uploads/2016/08/fischer-2739115_640.jpg',
                      height: 200,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Gambar Yang Ke ${index + 1}", style: TextStyle(fontWeight: FontWeight.bold,)),
                    ),
                  ],
                ) 
              );
            },
          ),
        )
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fun videos and images'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(right: 100, left: 100),
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: AssetImage('assets/images/login.png'),),
                Expanded(
                  child: TextFormField(
                    validator: (value) {
                      if (value == TextInputType.emailAddress) {
                        return 'Please enter some text';
                      }
                      
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      labelText: 'Email'
                    ),
                  ),
                ),
              ],
            ),
        )
      ),
    );
  }
}