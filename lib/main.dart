import 'package:flutter/material.dart';
import 'package:ghar_pay/splash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        '/': (context) => myapp(),
        'splash' : (context) => splash(),
      },
    ),
  );
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 300,
        height: 300,
        color: Colors.amber,
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
