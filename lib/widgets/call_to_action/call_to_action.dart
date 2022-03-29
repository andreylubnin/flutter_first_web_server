import 'package:first_web_server/extensions/hover_extensions.dart';
import 'package:first_web_server/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:first_web_server/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      desktop: CallToActionTabletDesktop(title: title),
      tablet: CallToActionTabletDesktop(title: title),
    ).showCursorOnHover.moveUpOnHover;
  }
}
