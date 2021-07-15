import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'homescreen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 3,
        navigateAfterSeconds: HomeScreen(),
        title: Text(
          'Welcome to\nColor Swap App',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
        ),
        image: Image.asset('Assets/logo.png'),
        backgroundColor: Colors.cyan,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 150.0,
        loaderColor: Colors.white);
  }
}
