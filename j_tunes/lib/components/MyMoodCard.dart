// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:j_tunes/pages/MyPlayingSong.dart';

class MyMoodCard extends StatelessWidget {

  final Image mood_img;

  const MyMoodCard({
    Key? key,

    required Image this.mood_img,

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
            name: '', 
            pic: mood_img, 
            tarikh: '',

          ))
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: mood_img,
        ),
      ),
    );
  }
}
