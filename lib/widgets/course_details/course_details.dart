import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  height: 0.9,
                  fontFamily: 'Open Sans Bold'),
              textAlign: textAlignment,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'In this course we will go over the basics of using Flutter Web for website development. Topics will include responsive layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
              style: TextStyle(fontSize: descriptionSize, height: 1.7),
            ),
          ],
        ),
      );
    });
  }
}
