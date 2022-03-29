import 'package:first_web_server/datamodels/navbar_item_model.dart';
import 'package:first_web_server/locator.dart';
import 'package:first_web_server/services/navigation_service.dart';
import 'package:first_web_server/widgets/navbar_item/navbar_item_desktop.dart';
import 'package:first_web_server/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:first_web_server/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final Icon icon;
  const NavBarItem(
      {Key? key,
      required this.title,
      required this.navigationPath,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      icon: icon,
    );
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ).showCursorOnHover.moveUpOnHover,
      ),
    );
  }
}
