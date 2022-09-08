import 'package:crappo_crypto_ui_challenge/screens/my_crappo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crappo Wallet',
      theme: ThemeData(
        fontFamily: 'Rubik',
        primarySwatch: Colors.blue,
      ),
      home: const MyCrappoPage(),
    );
  }
}
