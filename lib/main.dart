import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lightning Delay',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Lightning Delay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: (){},
              child: Icon(Icons.menu),
              style: ButtonStyle(
                 shape: MaterialStateProperty.all(CircleBorder()),
                 padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                 backgroundColor: MaterialStateProperty.all(Colors.blue), // <-- Button color
                 overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                    if (states.contains(MaterialState.pressed)) return Colors.red; 
                 }
                 )
              )
            )
          ],
        ),
      ),
    );
  }
}
