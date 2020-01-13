// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:route/page_one.dart';
import 'package:route/page_two.dart';
import 'package:route/page_three.dart';

class MyRoute {
  static const pageOne = '/';
  static const pageTwo = '/pageTwo';
  static const pageThree = '/pageThree';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<MyRoute>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case MyRoute.pageOne:
        return MaterialPageRoute(
          builder: (_) => PageOne(),
          settings: settings,
        );
      case MyRoute.pageTwo:
        if (hasInvalidArgs<PageTwoArguments>(args)) {
          return misTypedArgsRoute<PageTwoArguments>(args);
        }
        final typedArgs = args as PageTwoArguments ?? PageTwoArguments();
        return MaterialPageRoute(
          builder: (_) => PageTwo(key: typedArgs.key, name: typedArgs.name),
          settings: settings,
        );
      case MyRoute.pageThree:
        if (hasInvalidArgs<PageThreeArguments>(args)) {
          return misTypedArgsRoute<PageThreeArguments>(args);
        }
        final typedArgs = args as PageThreeArguments ?? PageThreeArguments();
        return MaterialPageRoute(
          builder: (_) => PageThree(key: typedArgs.key, index: typedArgs.index),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//PageTwo arguments holder class
class PageTwoArguments {
  final Key key;
  final String name;
  PageTwoArguments({this.key, this.name});
}

//PageThree arguments holder class
class PageThreeArguments {
  final Key key;
  final int index;
  PageThreeArguments({this.key, this.index});
}
