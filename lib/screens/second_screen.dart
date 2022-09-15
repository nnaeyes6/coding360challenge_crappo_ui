import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0D0D2B),
      body: Center(
          child: Text(
        'Crappo Crypto',
        style: TextStyle(color: Colors.white70, fontSize: 50),
      )),
    );
  }
}
