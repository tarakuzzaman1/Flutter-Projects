import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff75A488),
        body: Container(
          //width: double.infinity,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset('assets/images/Asset_img.png'),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27.0,
                                  ),
                                  children:[
                                    TextSpan(text: 'Book a Green Room &',style: TextStyle(
                                      color: Color(0xff1E1E1E),
                                    ),),
                                    TextSpan(text: ' Workspace ',style: TextStyle(
                                      color: Color(0xff75A488),
                                    ),
                                    ),
                                    TextSpan(text: 'On-Demand',style: TextStyle(
                                      color: Color(0xff1E1E1E),
                                    ),
                                    ),
                                  ]
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Container(
                              child: const Text(
                                  'A Space that unite the conscious individuals who collaborate to reduce their carbon footprint.',
                                  style:TextStyle(
                                    fontSize: 13.0,
                                    color: Color(0xff747474)
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Container(
                                    child: const Text('.',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  )
                                  ),
                                  Container(
                                    child: const Text('.',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  )
                                  ),
                                  Container(
                                    child: const Text('.',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  )
                                  ),
                                  Container(
                                    child: const Text('.',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  )
                                  ),
                                ]
                              )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff1E1E1E),), 
                    ),
                    onPressed: (){}, child: const Padding(
                      padding: EdgeInsets.only(left: 100.0,right: 100.0,top: 20.0,bottom: 20.0),
                        child: Text('Let\'s Start',style: TextStyle(
                          fontSize: 16.0,
                        ),),
                      ),
                      ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}