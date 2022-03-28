import 'package:first_web_server/routing/route_names.dart';
import 'package:first_web_server/views/about/about_view.dart';
import 'package:first_web_server/views/episodes/episode_view.dart';
import 'package:first_web_server/views/home/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(HomeView());
    case aboutRoute:
      return _getPageRoute(AboutView());
    case episodesRoute:
      return _getPageRoute(EpisodesView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
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
              FadeTransition(opacity: animation, child: child),
        );
}
