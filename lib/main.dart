import 'package:flutter/material.dart';
import 'package:final_1/screens/gSScreen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'A Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        // fontFamily: 'Roboto',
      ),
      home: GSScreen(),
    );
  }
}
