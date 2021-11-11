import 'dart:async';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Splash());
}

class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context ,
      MaterialPageRoute(builder: (context){
         return NewApp();
      }));
     
    });
    
  }
  Widget build(BuildContext context) {
    return Container(
      //child: FlutterLogo(size: MediaQuery.of(context).size.height,),
      child: Image.asset('../assets/images/logo1.jpg')
    );
  }
}

class NewApp extends StatefulWidget {
  const NewApp({ Key? key }) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}