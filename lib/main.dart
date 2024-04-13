// ignore_for_file: prefer_const_constructor, prefer_const_constructors

import 'package:app/Screen/Responsive.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ResponsivePage(),
    );
  }
}