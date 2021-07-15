import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Random random = new Random();
dynamic red = 0;
dynamic green = 0;
dynamic blue = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          'COLOR SWAP',
          style: TextStyle(
            fontSize: 32.0,
          ),
          maxLines: 1,
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        elevation: 6.0,
        toolbarHeight: MediaQuery.of(context).size.height * .08,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(
          MediaQuery.of(context).size.width * .08,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(red, green, blue, 1),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  "Red = $red, Green = $green, Blue = $blue",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(red, green, blue, 1),
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        red = random.nextInt(256);
                        green = random.nextInt(256);
                        blue = random.nextInt(256);
                      });
                    },
                    color: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: AutoSizeText(
                      'Change Color',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        letterSpacing: 2.0,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
