import 'package:first_web_server/routing/route_names.dart';
import 'package:first_web_server/widgets/navigation_drawer/drawer_header.dart';
import 'package:first_web_server/widgets/navigation_drawer/drawer_item.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(children: const [
        NavigationDrawerHeader(),
        DrawerItem(
          title: 'Episodes',
          icon: Icons.videocam,
          navigationPath: episodesRoute,
        ),
        DrawerItem(
          title: 'About',
          icon: Icons.help,
          navigationPath: aboutRoute,
        ),
      ]),
    );
  }
}
