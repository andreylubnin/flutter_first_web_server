import 'package:first_web_server/routing/route_names.dart';
import 'package:first_web_server/views/episodes/episode_view.dart';
import 'package:first_web_server/widgets/navigation_bar/navbar_item.dart';
import 'package:first_web_server/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              NavBarItem(
                title: 'Episodes',
                navigationPath: episodesRoute,
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'About',
                navigationPath: aboutRoute,
              ),
            ],
          )
        ],
      ),
    );
  }
}
