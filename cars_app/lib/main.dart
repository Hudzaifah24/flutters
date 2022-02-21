import 'package:flutter/material.dart';
import 'custom_font.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  int amount = 0;

  void addition() {
    setState(() {
      amount++;
    });
  }

  void subtraction() {
    setState(() {
      amount--;
    });
  }

  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Cars', style: TextStyle(fontWeight: FontWeight.bold),),
          actions: <Widget>[
            IconButton(onPressed: () => {
              subtraction()
            }, icon: Icon(Icons.mail)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage())
              );
            }, icon: Icon(Icons.login)),
          ],
          shadowColor: Colors.black,
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(child: Scrollbar(
                isAlwaysShown: _isAlwaysShown,
                showTrackOnHover: _showTrackOnHover,
                hoverThickness: 30.0,
                child: ListView(children: [
                  for (var i = 0; i < 10; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: 
                          Image(
                            image: AssetImage('assets/images/car_one.jpg'),
                            height: 300,  
                          ),
                      )
                    ],
                  ),
                  Text('Order Quantity \n$amount', style: gochiHand, textAlign: TextAlign.center),
                ],),
              )),
              Divider(height: 1),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            addition()
          },
          tooltip: 'Increment',
          child: 
            Icon(Icons.car_rental),
            hoverColor: Colors.red,
            backgroundColor: Colors.green,
        ),
      );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login', style: TextStyle(fontWeight: FontWeight.bold),),
          actions: [
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.app_registration_rounded)
            ),
          ]
        ),
        body: Container(

        ),
      )
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Halaman Kedua',);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
