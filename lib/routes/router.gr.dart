// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_tutorial/pages/initial_page.dart';
import 'package:auto_route_tutorial/pages/second_page.dart';
import 'package:auto_route_tutorial/pages/third_page.dart';

class Router {
  static const initialPage = '/';
  static const secondPage = '/second-page';
  static const thirdPage = '/third-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.initialPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => InitialPage(),
          settings: settings,
        );
      case Router.secondPage:
        if (hasInvalidArgs<String>(args, isRequired: true)) {
          return misTypedArgsRoute<String>(args);
        }
        final typedArgs = args as String;
        return MaterialPageRoute<dynamic>(
          builder: (_) => SecondPage(userId: typedArgs),
          settings: settings,
          fullscreenDialog: true,
        );
      case Router.thirdPage:
        if (hasInvalidArgs<ThirdPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ThirdPageArguments>(args);
        }
        final typedArgs = args as ThirdPageArguments;
        return PageRouteBuilder<dynamic>(
          pageBuilder: (ctx, animation, secondaryAnimation) =>
              ThirdPage(userName: typedArgs.userName, points: typedArgs.points),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.zoomIn,
          transitionDuration: Duration(milliseconds: 200),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//ThirdPage arguments holder class
class ThirdPageArguments {
  final String userName;
  final int points;
  ThirdPageArguments({@required this.userName, @required this.points});
}
