import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test task',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
        fontFamily:'AmaticSC',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color= Color.fromRGBO(
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),1.0);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:InkWell(
        onTap: changeColor,
        child: Stack(
          children:<Widget> [
            Container(
              color: _color ,
            ),
            Center(
              child: Text("Hey there",
              style: TextStyle(
                fontSize: 24,
              ),),
            ),
          ],
        ),),
    );
  }
}
