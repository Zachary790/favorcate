import 'dart:convert';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/services.dart';
class HYMealRequest {
  static Future<List<HYMealModel>> getMealData() async {
    // 加载json文件
    final jsonString = await rootBundle.loadString("assets/json/meal.json");
    // json转Map/List
    final result = json.decode(jsonString);
    final mealArray = result["meal"];
    List<HYMealModel> meals = [];
    for(var json in mealArray) {
      meals.add(HYMealModel.fromJson(json));
    }
    return meals;
  }
}