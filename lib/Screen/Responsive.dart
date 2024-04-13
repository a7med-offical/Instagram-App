// ignore_for_file: prefer_const_constructors

import 'package:app/Screen/WebPage.dart';
import 'package:app/Screen/mobilePage.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  ResponsivePage({
    super.key,
  });

  final webpge = webPage();
  final mobpage = mobilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return webpge;
        } else {
          return mobpage;
        }
      }),
    );
  }
}
