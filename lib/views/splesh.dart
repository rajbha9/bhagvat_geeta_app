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
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
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
