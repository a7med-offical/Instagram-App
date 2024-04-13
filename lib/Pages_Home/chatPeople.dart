// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ChatPeople extends StatefulWidget {
  const ChatPeople({Key? key});

  @override
  State<ChatPeople> createState() => _ChatPeopleState();
}

class _ChatPeopleState extends State<ChatPeople> {
  bool icon2 = true;
  TextEditingController controller = TextEditingController();
  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 5, left: 3),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: AssetImage('Asset/yasmeen(7).jpg'),
                  ),
                ),
                SizedBox(),
                Column(
                  children: [
                    Text('Yasmen Sapry'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'YasmenOffi...',
                        style: TextStyle(color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    )
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                Icon(Icons.call, size: 32),
                SizedBox(width: 10),
                Icon(Icons.video_call_sharp, size: 32),
                SizedBox(width: 10),
                IconButton(
                    onPressed: () {
                      return Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_forward_rounded, size: 32))
              ],
            ),
          ),
          Spacer(flex: 10),
         
         Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return 
                   Padding(
                     padding: const EdgeInsets.only(left: 200.0,right: 10),
                     child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,  
                      ),
                      height: 40,
                               
                        width:50,
                      child: Center(child: Text(messages[index],style: TextStyle(fontSize: 22),))),
                   );
             
              },
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  width: 300,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'write',
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      String message = controller.text;
                      messages.add(message);
                      controller.clear();
                      print(message);
                      icon2=!icon2;

                    });
                  },
                  icon: Icon(
                    icon2 ? Icons.send : Icons.keyboard_voice_sharp,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}