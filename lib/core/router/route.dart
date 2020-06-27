import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';
class HYRouter {
  static final String initIalRouter = HYMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (etx) => HYMainScreen(),
  };

  static final RouteFactory generateRoute = (setting) {
    return null;
  };

  static final RouteFactory unknownRoute = (setting) {
    return null;
  };
}