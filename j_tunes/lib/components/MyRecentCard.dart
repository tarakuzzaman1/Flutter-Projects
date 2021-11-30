// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:j_tunes/pages/MyPlayingSong.dart';

class MyRecentCard extends StatelessWidget {

  final String title;
  final String date;
  final Image img;

  const MyRecentCard({
    Key? key,

  required String this.title,
  required String this.date,
  required Image this.img,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0.0,
      ),
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=>MyPlayingSong(
            name: title,
            tarikh: date,
            pic: img,
          ),
          )
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              img,
              Padding(
                padding: const EdgeInsets.only(top:5.0,bottom:5.0),
                child: Text(
                  title, 
                  style:const TextStyle(
                    fontSize:16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize:15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}