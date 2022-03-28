import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'FLUTTER WEB.\nTHE BASICS',
            style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                height: 0.9,
                fontFamily: 'Open Sans Bold'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'In this course we will go over the basics of using Flutter Web for website development. Topics will include responsive layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
            style: TextStyle(fontSize: 20, height: 1.7),
          ),
        ],
      ),
    );
  }
}
