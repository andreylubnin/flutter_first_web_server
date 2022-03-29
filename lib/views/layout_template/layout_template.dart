import 'package:first_web_server/locator.dart';
import 'package:first_web_server/routing/router.dart';
import 'package:first_web_server/services/navigation_service.dart';
import 'package:first_web_server/widgets/centered_view/centered_view.dart';
import 'package:first_web_server/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:first_web_server/widgets/navigation_bar/navigation_bar.dart'
    as nav_bar;

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? const NavigationDrawer()
              : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(children: [
              const nav_bar.NavigationBar(),
              Expanded(
                child: child,
              ),
            ]),
          ));
    });
  }
}
