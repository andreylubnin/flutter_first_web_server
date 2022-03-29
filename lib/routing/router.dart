import 'package:first_web_server/routing/route_names.dart';
import 'package:first_web_server/views/about/about_view.dart';
import 'package:first_web_server/views/episodes/episodes_view.dart';
import 'package:first_web_server/views/home/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(HomeView(), settings);
    case aboutRoute:
      return _getPageRoute(AboutView(), settings);
    case episodesRoute:
      return _getPageRoute(EpisodesView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name!);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
