// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/Pages_Home/chatPeople.dart';
import 'package:flutter/material.dart';

import '../Logic/chat.dart';


class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
               Padding(
            padding: EdgeInsets.all(22.0),
            child: TextField(
              decoration: InputDecoration(
                  focusColor: Colors.white,
                  hoverColor: Colors.white,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search'),
               )),
      
             
             SizedBox(height: 30,),
             Container(height: 740,
             child: ListView.builder(
              itemCount: ChatItem.length,
              itemBuilder: (context,index){
              return   Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: GestureDetector(
                  onTap: () {
                      Navigator.push(context, (MaterialPageRoute(builder: (context){
      return ChatPeople(); 
    })));
                  },
                   child: Row(
                   
                    children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(ChatItem[index].img),
                      radius: 30,
                     
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Text(ChatItem[index].Name,style: TextStyle(fontSize: 18),),
                           Text(ChatItem[index].ActiveName,style: TextStyle(color: Colors.grey),)
                         ],
                       ),
                     ),
                     Spacer(flex: 2,),
                    Icon(Icons.camera_alt_outlined,size: 38,)
                   ],),
                 ),
               );
             }),
             
             )
          ],
        ),
      ),
    );
  }
}