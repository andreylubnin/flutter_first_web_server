import 'package:first_web_server/widgets/navigation_bar/navbar_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(
      {Key? key,
      required this.title,
      required this.icon,
      required this.navigationPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(children: [
        Icon(icon),
        const SizedBox(
          width: 30,
        ),
        NavBarItem(
          title: title,
          navigationPath: navigationPath,
        ),
      ]),
    );
  }
}
