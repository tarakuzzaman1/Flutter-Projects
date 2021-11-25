
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('assets/images/green.png',height: 80.0,
                width: 80.0,  
                          ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Container(
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Text('876 Green town',style: TextStyle(
                      color: Color(0xff1E1E1E)
                    )
                  ),
                  ),
                  Container(
                    child: const Text('Rosaville',style: TextStyle(
                      color: Color(0xff747474),
                    ),
                    )
                  ),
                  Container(
                    child: const Text('* 4.9',style: TextStyle(
                      color: Color(0xff747474),
                    ),
                    )
                  ),
                ]
              )
            ),
          ],
        ),
      ),
    );
  }
}
