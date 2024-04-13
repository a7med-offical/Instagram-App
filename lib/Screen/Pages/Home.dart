// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/Model/Posts.dart';
import 'package:app/Model/Story.dart';
import 'package:app/Pages_Home/Notification.dart';
import 'package:app/Pages_Home/chat.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _isFavorited = List.generate(ItemPost.length, (index) => false);
   bool CloN= true;
  @override
  Widget build(BuildContext context) {
    // final DataHome = Provider.of<Story>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8.0, right: 5, top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Instegram',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                      children: [
                      IconButton(
  onPressed: () {
    // Add your favorite action here
    Navigator.push(context, (MaterialPageRoute(builder: (context){
      return Notfications(); 
      
    })));

    setState(() {
      CloN=!CloN;
    });
  },
  icon: Stack(
    children: [
      Icon(Icons.favorite_border),
      Positioned(
        top: -6,
        right: -6,
        child: Container(
          width: 15,
          height: 13,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:CloN?Colors.red: Colors.grey[10],
          ),
        ),
      ),
    ],
  ),
  color: Colors.white,
),
                        IconButton(onPressed: () { Navigator.push(context, (MaterialPageRoute(builder: (context){
      return Chat(); 
    })));}, icon: Icon(Icons.chat))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 130,
              child: ListView.builder(
                  itemCount: storyData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.blue,
                                width: 2,
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 45,
                              backgroundImage:
                                  NetworkImage(storyData[index].image),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 5),
                          child: Text(storyData[index].CaptionStory),
                        )
                      ],
                    );
                  }),
            ),
            Divider(),
            // SizedBox(height: 5,),

            Container(
              width: double.infinity,
              height: 900,
              child: ListView.builder(
                  itemCount: ItemPost.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, top: 1, right: 8),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 18,
                                backgroundImage:
                                    AssetImage(ItemPost[index].image),
                              ),
                            ),
                            Text(ItemPost[index].Name),
                            Spacer(
                              flex: 2,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.more_vert_sharp))
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Container(
                            width: double.infinity,
                            height: 200,
                            child: GestureDetector(
                              onDoubleTap: (){
                                setState(() {
                                   _isFavorited[index] = !_isFavorited[index];
                                });
                              },
                              child: Image.asset(
                                  fit: BoxFit.cover, ItemPost[index].post),
                            )),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isFavorited [index]= !_isFavorited[index];
                                  });
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color:
                                      _isFavorited [index]? Colors.red : Colors.white,
                                )),
                            IconButton(
                                onPressed: null,
                                icon: Icon(Icons.comment_outlined)),
                            IconButton(
                                onPressed: null,
                                icon: Icon(Icons.ads_click_sharp)),
                            Spacer(
                              flex: 2,
                            ),
                            IconButton(
                                onPressed: null,
                                icon: Icon(Icons.bookmark_outlined))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 33,
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                      ItemPost[index].LikedImage,
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
                                        radius: 10,
                                        backgroundImage: AssetImage(
                                          ItemPost[index].LikedImage2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Text('Liked by '),
                            ),
                            Text(
                              ItemPost[index].LikedPepole,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'view Likes ',
                                style: TextStyle(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(ItemPost[index].CommentName,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Text(
                              ItemPost[index].caption,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(ItemPost[index].COMMENT,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(ItemPost[index].Time,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
