import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/MyCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Green working space App',
      home: Scaffold(
        backgroundColor: Color(0XFF75A488),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Container(
                  child: const ListTile(
                    title: Text('Good Afternoon',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                    subtitle: Text('Susan Clay',style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                    trailing: Icon(Icons.add_alert_rounded,color: Colors.white,),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(//To Do Single child Scrollview
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0),bottomLeft: Radius.circular(25.0),bottomRight: Radius.circular(25.0))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Color(0xffF38882),
                          ),
                          child: Image.asset('assets/images/Rectangle.png',height: 80.0,
                          width: 80.0,
                          
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0,right:50.0,),
                          child: Container(
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Your fresh and green comfortable',style: TextStyle(
                                      color: Color(0xff1E1E1E)
                                    )
                                  ),
                                  TextSpan(
                                    text: 'place',
                                    style: TextStyle(
                                      color: Color(0xff75A488)
                                    )
                                  )
                                ] 
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                child: Text('Search Bar'),
                              ),
                              Container(
                                child: Icon(Icons.menu_outlined),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Card(
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: const Icon(Icons.location_city, size: 40.0, color: Colors.redAccent,)
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        child: const Text('Near By'),
                                      ),
                                    ]
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Card(
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: const Icon(Icons.book_online,size: 40.0, color: Colors.redAccent,)
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        child: const Text('Book Room'),
                                      ),
                                    ]
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  child: Column(
                                    children: [
                                      Container(
                                        child: const Icon(Icons.event, size: 40.0, color: Colors.redAccent,)
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        child: const Text('Add Event'),
                                      ),
                                    ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 50.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Text('Recommended for You',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                          ],
                          ),
                        ),
                        MyCard(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        MyCard(),
                        
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: const Icon(Icons.person_off),
                    ),
                    Container(
                      child: const Icon(Icons.drafts_outlined),
                    ),
                    Container(
                      child: const Icon(Icons.home_sharp),
                    ),
                    Container(
                      child: const Icon(Icons.horizontal_rule),
                    ),
                    Container(
                      child: const Icon(Icons.flag),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
