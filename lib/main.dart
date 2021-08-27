import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

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
    return SplashScreenView(
      navigateRoute: HomeScreen(),
      duration: 3000,
      imageSize: 150,
      imageSrc: 'Assets/logo.png',
      text: 'Welcome to\nColor Swap App',
      textType: TextType.NormalText,
      textStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      backgroundColor: Colors.cyan,
    );
  }
}
