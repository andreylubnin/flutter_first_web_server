import 'package:first_web_server/locator.dart';
import 'package:first_web_server/routing/route_names.dart';
import 'package:first_web_server/routing/router.dart';
import 'package:first_web_server/services/navigation_service.dart';
import 'package:first_web_server/views/home/home_view.dart';
import 'package:first_web_server/views/layout_template/layout_template.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Open Sans',
              )),
      builder: (context, child) => LayoutTemplate(child: child!),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
  }
}
