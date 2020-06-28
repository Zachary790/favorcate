import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';
class HYRouter {
  static final String initIalRouter = HYMainScreen.routeName;
  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (etx) => HYMainScreen(),
    HYMealScreen.routeName: (etx) => HYMealScreen(),
    HYDetailScreen.routeName: (etx) => HYDetailScreen(),
  };

  static final RouteFactory generateRoute = (setting) {
    return null;
  };

  static final RouteFactory unknownRoute = (setting) {
    return null;
  };
}