// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyPlayingSong extends StatelessWidget {

  final String name;
  final String tarikh;
  final Image pic;

  const MyPlayingSong({ 
    Key? key,

    required String this.name,
    required String this.tarikh,
    required Image this.pic,

    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration:const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff101F0C),
                    Color(0xff0181AF),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
            ),
            Container(
              height: 450.0,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(60.0),bottomRight: Radius.circular(60.0),),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff101F0C),
                    Color(0xff0181AF),
                  ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                )
              ),
            ),
            Positioned(
              top:30.0,
              left: 20.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0.0,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
                child:const Icon(Icons.arrow_back_ios_rounded),
              )
            ),
            Positioned(
              top:140.0,
              left:90.0,
              width: 200.0,
              height: 200.0,
              child: pic,
            ),
            Positioned(
              top: 485.0,
              left: 30.0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding (
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text('Faded',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color:Colors.white),),
                          ),
                          Text(name,style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ))
                        ]
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:180.0),
                      child: Container(
                        child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                           primary: Colors.transparent,
                           elevation: 0.0,
                          ),
                          onPressed: (){},
                          child: const Icon(Icons.more_vert,color:Colors.white,size: 30.0,),
                        ),
                      ),
                    ),
                  ],
                ),
              ) 
            ),
            Positioned(
              top:530.0,
              left:30.0,
              child: Row(
                children: [
                  Slider(
                    min: 0.0,
                    max: 100.0,
                    value: 50.0,
                    onChanged:(value){},
                  ),
                ],
              ),
            ),
            Positioned(
              top: 580.0,
              left: 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.0,
                    ),
                    onPressed: () {},
                    child: const Icon(Icons.favorite,color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.0,
                    ),
                      onPressed: (){},
                      child: const Icon(Icons.arrow_left_sharp,size: 40.0,),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.0,
                    ),
                    onPressed: (){},
                    child:const Icon(Icons.pause_circle_filled,size: 40.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 5.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.0,
                    ),
                      onPressed: (){},
                      child:const Icon(Icons.arrow_right,size:40.0),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0.0,
                    ),
                    onPressed: (){},
                    child: const Icon(Icons.download,color: Colors.white,size: 30.0),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}