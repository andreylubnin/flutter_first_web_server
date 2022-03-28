import 'package:first_web_server/widgets/call_to_action/call_to_action.dart';
import 'package:first_web_server/widgets/course_details/course_details.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      CourseDetails(),
      Expanded(
          child: Center(
        child: CallToAction(title: 'Join Course'),
      ))
    ]);
  }
}
