import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/pages/paint_screen.dart';

void main() {
  runApp(MyPaintApp());
}

class MyPaintApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PaintScreen(),
    );
  }
}
