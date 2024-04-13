// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Notfications extends StatefulWidget {
  const Notfications({super.key});

  @override
  State<Notfications> createState() => _NotficationsState();
}

class _NotficationsState extends State<Notfications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       title: Text('Notifications'), 
      
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
      
          Text('Today',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
         ,SizedBox(height: 20,)
         , Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
      
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('Asset/WhatsApp Image 2023-08-06 at 11.18.05 (1).jpeg'),
      
            ),
            SizedBox(width: 10,),
            Text('mahmoud_essam started follow you.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,))
          ],),
          SizedBox(height: 15,),

Text('Last Night',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
 SizedBox(height: 15,),

          Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
      
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('Asset/images.jpg'),
      
            ),
            SizedBox(width: 10,),
            Text('mohamed_assaf started live vedio.',style: TextStyle(fontSize: 14),)
          ],),
          SizedBox(height: 15,),



 Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
      
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('Asset/images (2).jpg'),
      
            ),
            SizedBox(width: 10,),
            Text('Zizo_offical added a new photo.',style: TextStyle(fontSize: 16),)
          ],),
          SizedBox(height: 15,),

Row(
  children: [
        Stack(
    
                                    children: [
    
                                      CircleAvatar(
    
                                        radius: 25,
    
                                        backgroundImage: AssetImage(
    
                                          'Asset/messi(6).jpg'
    
                                        ),
    
                                      ),
    
                                      Positioned(
    
                                        top: 0,
    
                                        left: 12,
    
                                        child: Container(
    
                                          decoration: BoxDecoration(
    
                                            shape: BoxShape.circle,
    
                                            border: Border.all(),
    
                                          ),
    
                                          child: CircleAvatar(
    
                                            radius: 25,
    
                                            backgroundImage: AssetImage(
    
                                            'Asset/justen(7).jpg',
    
                                            ),
    
                                          ),
    
                                        ),
    
                                      ),
    
                                    ],
    
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('messi and other following create broadcast '),
                                  ),

  ],
),
     SizedBox(height: 15,),

Text('2 day\'s Left ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
 SizedBox(height: 15,),
          
                Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
      
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('Asset/images.jpg'),
      
            ),
            SizedBox(width: 10,),
            Text('mohamed_assaf started live vedio.',style: TextStyle(fontSize: 14),)
          ],),
          SizedBox(height: 15,),



 Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
      
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('Asset/images (2).jpg'),
      
            ),
            SizedBox(width: 10,),
            Text('Zizo_offical added a new photo.',style: TextStyle(fontSize: 16),)
          ],),
          SizedBox(height: 15,),

Row(
  children: [
        Stack(
    
                                    children: [
    
                                      CircleAvatar(
    
                                        radius: 25,
    
                                        backgroundImage: AssetImage(
    
                                          'Asset/messi(6).jpg'
    
                                        ),
    
                                      ),
    
                                      Positioned(
    
                                        top: 0,
    
                                        left: 12,
    
                                        child: Container(
    
                                          decoration: BoxDecoration(
    
                                            shape: BoxShape.circle,
    
                                            border: Border.all(),
    
                                          ),
    
                                          child: CircleAvatar(
    
                                            radius: 25,
    
                                            backgroundImage: AssetImage(
    
                                            'Asset/justen(7).jpg',
    
                                            ),
    
                                          ),
    
                                        ),
    
                                      ),
    
                                    ],
    
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('messi and other following create broadcast '),
                                  ),

  ],
),


       
        ],),
      ),
    );
  }
}