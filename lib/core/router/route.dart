import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
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
    if (setting.name == HYFilterScreen.routeName){
      return MaterialPageRoute(
        builder: (ctx) {
          return HYFilterScreen();
        },
        fullscreenDialog: true
      );
    }
    return null;
  };

  static final RouteFactory unknownRoute = (setting) {
    return null;
  };
}