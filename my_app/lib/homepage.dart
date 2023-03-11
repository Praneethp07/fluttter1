import 'package:my_app/main.dart';
import 'package:flutter/material.dart';

class myfirstpage extends StatefulWidget {
  const myfirstpage({super.key});

  @override
  State<myfirstpage> createState() => _myfirstpageState();
}

class _myfirstpageState extends State<myfirstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResumeBuilder'),
      ),
      body: Center(
          child: const Text(
        'Hooray you got it right!!',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      )),
    );
  }
}
