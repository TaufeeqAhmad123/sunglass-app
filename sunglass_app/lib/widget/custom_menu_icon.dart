import 'package:flutter/material.dart';

class CustomMenuIcon extends StatelessWidget {
  final double width,height;
  const CustomMenuIcon({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Container(
            height:height*0.16, 
            margin: EdgeInsets.only(right: width*0.7),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(width*height),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height:height*0.16, 
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(width),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height:height*0.16, 
             margin: EdgeInsets.only(left: width*0.4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(width),
            ),
          ),
        ],
      ),
    );
  }
}