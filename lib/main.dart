import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String _currentFortune = "";

  final _fortuneList = [
    "You will pet a dog today.",
    "You will experience something special today.",
    "Your heart will open to different feelings today.",
    "You will be your greatest self tomorrow.",
    "You will receive the prize of your hardwork tomorrow.",
    "Get ready for receiving, a buttload of blessings are coming your way.",
    "Always listen to your girlfriend.",
  ];

  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    setState(() {
       _currentFortune = _fortuneList[fortune];
    });
   
    //print(_currentFortune);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fortune Cookie App'),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/fortune_cookie.png', width: 200, height: 200, fit: BoxFit.cover,),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
            ),
            ElevatedButton(onPressed: _randomFortune, child: Text('Get Fortune'),
            ),
          ],
         ),
       ),
      );
  }
}
