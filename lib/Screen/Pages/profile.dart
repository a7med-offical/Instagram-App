// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:app/Model/postProfile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    Text(
                      'Ahmed_Abd_Elnasser_',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                          size: 30,
                        )),
                    Spacer(
                      flex: 2,
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.add_box_outlined,
                            color: Colors.white, size: 30)),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('Asset/310473270_3295468504115626_3625210125540003465_n.jpg'),
                ),
                Column(
                  children: [
                    Text(
                      '5',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '300',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '180',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ahmed Abd Elnasser',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                  Text('Flutter Developer',
                      style: TextStyle(fontSize: 17, color: Colors.grey)),
                  Text('21 years', style: TextStyle(fontSize: 17)),
                  Text('Better havn\'t come yet',
                      style: TextStyle(fontSize: 17)),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.black26),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Edit Profile',
                                style: TextStyle(fontSize: 17)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 40,
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Share Profile',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.black26))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Story Heighlight',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Keep your favourite story on your profile',
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Add Story'),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('Asset/244644450_3006898332972646_1007334921019854054_n.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('USA'),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('Asset/122453205_2726437834352032_4841821227670134815_n.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('vibes'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: GridView.builder(
                  itemCount: ProfilePost.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 10 ,width: 50,
                      child: Image.asset(ProfilePost[index].imagePost),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
