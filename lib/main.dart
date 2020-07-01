import 'package:favorcate/core/viewmodel/favor_view_medel.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => HYFulterViewModel(),),
      ChangeNotifierProxyProvider<HYFulterViewModel, HYMealViewModel>(
        create: (ctx) => HYMealViewModel(),
        update: (ctx, filterVM, mealVM) {
          mealVM.updateFilters(filterVM);
          return mealVM;
        },
      ),
      ChangeNotifierProvider(create: (ctx) => HYFavorViewModel(),)
    ],
    child: MyApp(),
  )
);
