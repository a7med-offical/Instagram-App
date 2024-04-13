// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../Logic/List.dart';

class mobilePage extends StatefulWidget {
  const mobilePage({super.key});

  @override
  State<mobilePage> createState() => _mobilePageState();
}

class _mobilePageState extends State<mobilePage> {
 int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    
        bottomNavigationBar: SingleChildScrollView(
        child: BottomNavigationBar(
         
          elevation: 0,
          currentIndex:indexPage ,
          selectedItemColor: Colors.white,
          onTap: (value) {
            setState(() {
              indexPage  = value ;
            });
          },
          items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_chat_rounded,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "")
        ]),
      ),
    body: item[indexPage],
    );
  }
}
