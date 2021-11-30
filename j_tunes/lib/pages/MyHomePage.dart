// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'MusicLibrary.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2F6B78),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icon.png',width: 190.0,height: 190.0),
            Image.asset('assets/images/lyric.png',height: 210.0,width: 210.0,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>MusicLibrary(),)
              );
            }, 
            child: const Padding(
              padding: EdgeInsets.only(left: 70.0,right: 70.0,top:8.0,bottom: 8.0),
              child: Text('Next',style: TextStyle(fontSize: 18.0),),
            ))
          ],
        ),
      )
    );
  }
}