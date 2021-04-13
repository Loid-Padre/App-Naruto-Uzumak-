import 'package:flutter/material.dart';
import 'UI/splach.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.brown,
      ),
      home: Splach(),
    );
  }
}
