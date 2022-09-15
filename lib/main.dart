import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:crappo_crypto_ui_challenge/colors.dart';
import 'package:crappo_crypto_ui_challenge/screens/my_crappo_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: (context, child) => ResponsiveWrapper.builder(
              child,
              maxWidth: 1200,
              minWidth: 480,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(480, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ],
              background: Container(
                color: const Color(0xFF0D0D2B),
              ),
            ),
        initialRoute: "/",
        debugShowCheckedModeBanner: false,
        title: 'Crappo Wallet',
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
            // brightness: Brightness.dark,
            visualDensity: const VisualDensity(horizontal: 2.0, vertical: 2.0),
            primaryColorLight: AppColor.backGroundColor,
            primaryColorDark: Colors.black,
            fontFamily: 'Rubik'),
        home: AnimatedSplashScreen(
            duration: 2000,
            splash: Image.asset(
              'images/Illustration1.png',
              height: 600,
            ),
            nextScreen: const MyCrappoPage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: AppColor.backGroundColor));
    // home: const MyCrappoPage(),
  }
}
