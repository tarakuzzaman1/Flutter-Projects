import 'package:flutter/material.dart';

import 'components/MyCalender.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Color(0xff75A488),
            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0,bottom: 20.0,left: 20.0,right: 20.0),
                      child: Container(
                        child: Column(
                          children:[
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Icon(Icons.arrow_back,
                                    color: Colors.white,),
                                  ),
                                  Container(
                                    child: const Icon(Icons.notification_add,
                                    color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Text(
                                      'Select Date',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 26.0
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: const Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                      ),
                                      ),
                                      const SizedBox(width: 5.0,),
                                      Container(
                                        child: const Text(
                                          'Sept 2021',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const[
                                  MyCalender(
                                    day:"Mon",
                                    date:"12",
                                    colors:Color(0xff75A488)
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  MyCalender(
                                    day:"Tue",
                                    date:"13",
                                    colors:Color(0xff75A488)
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  MyCalender(
                                    day:"Wed",
                                    date:"14",
                                    colors:Color(0xff1E1E1E)
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  MyCalender(
                                    day:"Thu",
                                    date:"15",
                                    colors:Color(0xff75A488)
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  MyCalender(
                                    day:"Fri",
                                    date:"16",
                                    colors:Color(0xff75A488)
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  MyCalender(
                                    day:"Sat",
                                    date:"17",
                                    colors:Color(0xff75A488)
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  MyCalender(
                                    day:"Sun",
                                    date:"18",
                                    colors:Color(0xff75A488)
                                  ),
                                ],
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                    Container(
                      //height: 500.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.asset('assets/images/green.png')),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: const Text('786 Green Town',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        color:Color(0xff1E1E1E)
                                      )
                                    )
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: const Text('*',
                                          style: TextStyle(
                                            color: Color(0xffFFB61D),
                                            fontSize: 30.0,
                                          ),
                                        ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          child: const Text('4.9',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right:260.0),
                              child: const Text('Rosaville',
                                style: TextStyle(
                                  color: Color(0xff747474),
                                  fontSize: 22.0
                                ),
                              ),
                            ),
                            Container(
                              child: const Text('6391 Elgin St. Celina,Delaware 10299876 Green town,Rosaville Is the perfect peacful location',
                              style: TextStyle(
                                color: Color(0xff747474),
                                fontSize: 14.0
                              )
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color(0xff1E1E1E)),
                                    
                                  ),
                                  onPressed: (){}, child: const Padding(
                                    padding: EdgeInsets.only(left: 100.0,right:100.0,top: 16.0,bottom: 20.0),
                                    child: Text('Book Now'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ] ,
                )
              ),
            ),
          ),
    );
  }
}
