// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:j_tunes/pages/MyGoPro.dart';
import '../components/MyRecentCard.dart';
import '../components/MyMoodCard.dart';
import '../components/MyPosterStack.dart';
import '../data/MyData.dart';

class MusicLibrary extends StatelessWidget {
  var obj = new MyData();
  MusicLibrary({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:10.0,right:10.0,top:18.0),
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Text('Music Library',style: TextStyle(
                          color: Color(0xff2F6B78),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                             primary: Color(0xff2F6B78),
                             shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onPressed: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>MyGoPro())
                            );
                          }, 
                          child:const Text('Go Pro'),
                        ),
                      ),
                    ],
                  ),
                ),
      
                MyPosterStack(
                  stack_img: Image.asset('assets/images/Poster.png',width: 360.0,)
                ),
                
      
                Padding(
                  padding: const EdgeInsets.only(top:10.0,right: 230.0,bottom: 10.0),
                  child: Container(
                    child: const Text(
                      'Recently Played', 
                      style: TextStyle(
                        color:Color(0xff2F6B78),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),
                    ),
                  ),
                ),
      
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyRecentCard(
                          title: "On My Way",
                          date: "Alan Walkar",
                          img: Image.asset("assets/images/my_way.png",height: 100.0,),
                        ),
                        MyRecentCard(
                          title: "Mix: Dec 21",
                          date: "2020",
                          img: Image.asset("assets/images/Sorry.png",height: 100.0),
                        ),
                        MyRecentCard(
                          title: "Mix: Dec 20",
                          date: "2020",
                          img: Image.asset("assets/images/Havana.png",height: 100.0),
                        ),
                        MyRecentCard(
                          title: "Mix: Dec 21",
                          date: "2020",
                          img: Image.asset("assets/images/Sorry.png",height: 100.0),
                        ),
                        MyRecentCard(
                          title: "Mix: Dec 20",
                          date: "2020",
                          img: Image.asset("assets/images/Havana.png",height: 100.0),
                        ),
                      ],
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(top:10.0,bottom:10.0,right: 210.0),
                  child: Container(
                    child: const Text(
                      'Select Your Mood',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color:Color(0xff2F6B78),
                      ),
                    ),
                  ),
                ),
                
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MyMoodCard(
                          mood_img: Image.asset("assets/images/glu.png",height: 140.0,),
                        ),
                        MyMoodCard(
                          mood_img: Image.asset("assets/images/Memories.png",height: 140.0,),
                        ),
                        MyMoodCard(
                          mood_img: Image.asset("assets/images/yalgaar.png",height: 140.0,),
                        ),
                        MyMoodCard(
                          mood_img: Image.asset("assets/images/glu.png",height: 140.0,),
                        ),
                      ],
                    ),
                  ),
                ),
               
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        fixedColor: Colors.grey,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,color: Colors.black,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_browser,color: Colors.black,),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_off_outlined,color: Colors.black,),
            label: 'My Profile',
          )
        ]
      ),
    );
  }
}
