

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:printly/all_proudact/all_prodact_screen.dart';
import 'package:printly/profile/profile_screen.dart';
import 'package:printly/proudact_details/proudact_detailes_screen.dart';

import 'home_page/home_page_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => Home());
      case '/proudact_detailes':
      case '/profile':
        return MaterialPageRoute(builder: (context) => Profile());
      case '/all_proudact':
        return MaterialPageRoute(builder: (context) => AllProudact());
      default:
        return MaterialPageRoute(builder: (context) => NotFoundPage());
    }
  }
}
class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Not Found')),
      body: Center(
        child: Text('Page not found'),
      ),
    );
  }
}