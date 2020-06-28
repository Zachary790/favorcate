import 'package:favorcate/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (ctx) => HYMealViewModel(),
    child: MyApp(),
  )
);
