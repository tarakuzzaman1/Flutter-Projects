
import 'package:flutter/material.dart';

class MyCalender extends StatelessWidget {
  final String day;
  final String date;
  final Color colors;
  const MyCalender({
    Key? key,
    required String this.day,
    required String this.date,
    required Color this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0)
      ),
      
      child: Column(
        children: [
          Container(
            child: Text(
            day,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            child:  Text(
            date,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ],
      ),
    );
  }
}