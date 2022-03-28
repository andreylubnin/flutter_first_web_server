import 'package:first_web_server/widgets/navigation_bar/call_to_action/call_to_action.dart';
import 'package:first_web_server/widgets/navigation_bar/centered_view/centered_view.dart';
import 'package:first_web_server/widgets/navigation_bar/course_details/course_details.dart';
import 'package:flutter/material.dart';
import 'package:first_web_server/widgets/navigation_bar/navigation_bar.dart'
    as nav_bar;

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            const nav_bar.NavigationBar(),
            Expanded(
              child: Row(children: const [
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction(title: 'Join Course'),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
