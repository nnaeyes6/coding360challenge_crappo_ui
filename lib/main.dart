import 'package:crappo_crypto_ui_challenge/colors.dart';
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
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          // brightness: Brightness.dark,
          visualDensity: const VisualDensity(horizontal: 2.0, vertical: 2.0),
          primaryColorLight: AppColor.backGroundColor,
          primaryColorDark: Colors.grey.shade900,
          fontFamily: 'Rubik'),
      home: const MyCrappoPage(),
    );
  }
}
