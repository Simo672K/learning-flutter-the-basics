import 'package:flutter/material.dart';
import './display.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var counter = 0;

  incrementCounter() {
    setState(() {
      ++counter;
    });
  }

  decrementCounter() {
    setState(() {
      --counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Title in the AppBar"),
      ),
      body: Column(children: [
        Display(
          content: 'Current Count: ${counter}',
        ),
        ElevatedButton(
          child: Text('Increment'),
          onPressed: incrementCounter,
        ),
        ElevatedButton(
          child: Text('Decrement'),
          onPressed: decrementCounter,
        )
      ]),
    ));
  }
}
