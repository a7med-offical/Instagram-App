// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../Model/addContact.dart';
import '../Responsive.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 10, left: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResponsivePage();
                    }));
                  },
                  icon: Icon(Icons.chevron_right_sharp))
            ],
          ),
        ),
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
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 400,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      // Remove the row from the list
                      addContact_.removeAt(index);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(addContact_[index].image),
                          radius: 37,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                           addContact_[index].Name,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Spacer(flex: 2),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              // Remove the row from the list
                              addContact_.removeAt(index);
                            });
                          },
                          child: Icon(
                            Icons.cancel_rounded,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    ));
  }
}
