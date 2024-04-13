// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:app/Model/addContact.dart';
import 'package:app/Screen/Responsive.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

 List<bool> FollowAccount = List.generate(addContact_.length, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: SingleChildScrollView(
             child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top:10.0,right: 10,left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Suggestions ',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ResponsivePage();
                  }));
                }, icon: Icon(Icons.chevron_right_sharp))
                ],),
              )
           ,
              SizedBox(height: 30,),
           
             Container(
              height: 900,
             child: ListView.builder(
              itemCount: addContact_.length,
              itemBuilder: (context,index){
              return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(addContact_[index].image),
                    radius: 45,
                  ) ,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(addContact_[index].Name,style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                  Spacer(flex: 2,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        FollowAccount[index]=!FollowAccount[index];
                        
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      child: Center(child: Text(!FollowAccount[index]?'Follow':'Following',style: TextStyle(color: Colors.white,fontSize: 18),)),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(5),
                        color: FollowAccount[index]?Colors.grey :Colors.blue
                      ),
                    ),
                  ),
                    // Spacer(flex: 1,),
                ],),
              );
             }),
             )
             ],),
           ),

    );
  }
}