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
    "You will experience something special today.",
    "Your heart will open to different feelings today.",
    "You will be your greatest self tomorrow.",
    "You will receive the prize of your hardwork tomorrow.",
    "Get ready for receiving, a boatload of blessings are coming your way.",
    "Don’t hold onto things that require a tight grip.",
    "The universe has already heard your wish. Now trust the timing.",
    "Storms don’t come to destroy you—they come to clear your path.",
    "Growth looks like discomfort in disguise.",
    "The moon teaches us: even in phases, you’re still whole.",
    "You will soon receive good news—unless your phone is on silent.",
    "Life is short. Eat the cookie.",
    "Avoid arguments with fools—they will drag you down and beat you with experience.",
    "The fortune you seek is in another cookie.",
    "Your pet secretly judges your life choices.",
    "You will achieve greatness… after one more nap.",
    "Warning: Do not mistake this cookie for life advice.",
    "Your future self is impressed you’re still holding it together.",
    "It’s okay to be the plot twist in your own story.",
    "Stop shrinking to fit places you’ve outgrown.",
    "You’re not behind. You’re on a path that isn’t rushed.",
    "You are divinely guided—even when the path feels unclear.",
    "When the soul is ready, the signs appear.",
    "Trust the timing. The universe is never late.",
    "The answers you seek are already within you.",
    "Let the divine plan unfold. Your only task is to stay open.",
    "You are not just living life. Life is living through you.",
    "There is strength in softness and power in grace.",
    "Every setback is a setup for something greater.",
    "The fire within you is stronger than any storm around you.",
    "You’re not starting over; you’re starting wiser.",
    "Your courage will lead someone else to find theirs.",
    "Even your smallest step forward is a rebellion against giving up.",
    "You were never meant to blend in. You’re here to shift the room.",
    "You are becoming someone you once needed. That’s beautiful.",
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
