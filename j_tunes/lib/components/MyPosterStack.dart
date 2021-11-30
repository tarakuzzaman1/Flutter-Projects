// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:j_tunes/pages/MyPlayingSong.dart';

class MyPosterStack extends StatelessWidget {
  final Image stack_img;
  const MyPosterStack({
    Key? key,
    required Image this.stack_img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:Color(0xff979797),
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.75,
            child: stack_img,
          ),
          const Positioned(
            top: 8.0,
            right: 8.0,
            child: Text(
              'vevo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0, 
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 8.0,
            right: 10.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>MyPlayingSong(
                    pic: stack_img,
                    name: '',
                    tarikh: '',
                  ))
                );
              }, 
              child: const Text('Play NOW',style: TextStyle(color: Colors.black),),
            ),
          ),
          Positioned(
            top: 55.0,
            left: 90.0,
            child: Container(
              child: Column(
                children: const [
                  Text(
                    '#1', 
                    style: TextStyle(
                      fontSize: 85.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9EFA73),
                    ),
                  ),
                  Text(
                    'TRENDING HITS', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      color: Color(0xff9EFA73),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
