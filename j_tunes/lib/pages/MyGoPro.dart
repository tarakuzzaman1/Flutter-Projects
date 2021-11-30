// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyGoPro extends StatelessWidget {
  const MyGoPro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0,right: 20.0),
        child: Container(
          child: Stack(
            children: [
              Positioned(
                top: 20.0,
                left: 10.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: (){
                  Navigator.pop(context);
                }, 
                child: Icon(Icons.arrow_back_ios_rounded,color: Colors.grey,))
              ),
              Positioned(
                top: 20.0,
                left: 150.0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Container(
                    child: const Text('Go Pro',style: TextStyle(
                      fontSize: 18.0
                    ),),
                  ),
                ),
              ),
              const Positioned(
                top: 50.0,
                child: Divider(
                  thickness: 6.0,
                  color: Color(0xff9EFA73),
                ),
              ),
              Positioned(
                top: 70.0,
                child: Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom: 8.0),
                  child: Container(
                    height: 230,
                    width: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff82A6AE),
                    ),
                    child: Stack(
                      children:const [
                        Positioned(
                          top: 10.0,
                          left: 10.0,
                          child: Text('jTunes Pro',
                          style: TextStyle(
                          color: Color(0xff393939),
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        ),
                        Positioned(
                          top: 35.0,
                          left: 10.0,
                          child: Text(
              
                            '''
                100% Ad-Free
                Unlimited Downloads
                Unlimited jTunes
                Unlimited Daily Skips
                Deals & Special Offers
                Exclusive Content
                Highest Quality Audio
                Listen on Sonos, Alexa & More
              
                            ''',
                            style: TextStyle(
                              color:Colors.white,
                              height: 1.2
                            ),
                          )
                        ),
                        Positioned(
                          bottom: 2.0,
                          right: 10.0,
                          child: Text(''' 
                          Rs 33 per month  
                          Save 66% per year
                          ''')
                        )
                      ],
                    )
                  ),
                ),
              ),
              Positioned(
                top: 320.0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:10.0),
                  child: Container(
                    height: 150,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff82A6AE),
                      ),
                    child: Stack(
                      children: const[
                        Positioned(
                            top: 10.0,
                            left: 10.0,
                            child: Text('jTunes Plus',
                            style: TextStyle(
                            color: Color(0xff393939),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          ),
                          Positioned(
                            top: 30.0,
                            left: 10.0,
                            child: Text(''' 
              
                Unlimited jTunes
                Unlimited Daily Skips                     
              
                            ''',style: TextStyle(
                              color: Colors.white,
                              height: 1.2
                            ),)
                          ),
                          Positioned(
                            bottom: 2.0,
                            left: 110.0,
                            child: Text('''
                Rs 25 per month
                Save 49% per year                        
                            ''',style: TextStyle(
                              color: Color(0xff393939)
                            ),)
                          )
                      ],
                    ),  
                  ),
                ),
              ),
              Positioned(
                top: 480.0,
                child: Container(
                  height: 150,
                    width: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff82A6AE),
                    ),
                  child: Stack(
                    children: const[
                      Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Text('jTunes Plus Ad-Free',
                        style: TextStyle(
                        color: Color(0xff393939),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),)),
                      Positioned(
                        top: 40.0,
                        left: 10.0,
                        child: Text('''
                100% Ad Free
                Unlimited Daily Skips                      
                        ''',style: TextStyle(
                          color: Colors.white,
                          height: 1.2
                        ),)
                      ),
                      Positioned(
                        bottom: 2.0,
                        left: 110.0,
                        child: Text('''
                        Rs 25 per month
                        Save 49% per year                    
                        '''),
                        )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}