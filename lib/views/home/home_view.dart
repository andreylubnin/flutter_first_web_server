import 'package:flutter/material.dart';

import 'package:first_web_server/views/home/home_content_desktop.dart';
import 'package:first_web_server/views/home/home_content_mobile.dart';
import 'package:first_web_server/widgets/centered_view/centered_view.dart';
import 'package:first_web_server/widgets/navigation_bar/navigation_bar.dart'
    as nav_bar;
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(children: [
            const nav_bar.NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                desktop: const HomeContentDesktop(),
                mobile: const HomeContentMobile(),
              ),
            ),
          ]),
        ));
  }
}
