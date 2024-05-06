import 'dart:async';

import 'package:flutter/material.dart';

class Splesh extends StatefulWidget {
  const Splesh({super.key});

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Colors.amber,
            Colors.deepOrangeAccent,
            // Colors.amber,
            // Colors.deepOrangeAccent,
            // Colors.amber,
            // Colors.deepOrangeAccent,
            // Colors.amber,
            // Colors.deepOrangeAccent,
            // Colors.amber,
            // Colors.deepOrangeAccent,
            // Colors.amber,
            // Colors.deepOrangeAccent,
          ]),
          image: DecorationImage(
            image: AssetImage('asset/img/splash.png'),
          ),
        ),
      ),
    );
  }
}
