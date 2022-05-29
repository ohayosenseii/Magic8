import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int centerimage = 1;
  void changeimage() {
    setState(() {
      centerimage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Text('AmA❓'),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.blue.shade600,
        child: Expanded(
          child: Center(
              child: FlatButton(
            child: Image(
              image: AssetImage('images/ball$centerimage.png'),
            ),
            onPressed: () {
              changeimage();
            },
          )),
        ),
      ),
    );
  }
}
