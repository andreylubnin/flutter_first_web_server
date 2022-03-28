import 'package:flutter/material.dart';

import 'package:first_web_server/views/home/home_content_desktop.dart';
import 'package:first_web_server/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const HomeContentDesktop(),
      mobile: const HomeContentMobile(),
    );
  }
}
