import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/services/meal_request.dart';
import 'package:favorcate/core/viewmodel/base_view_model.dart';
import 'package:favorcate/core/viewmodel/filter_view_model.dart';
import 'package:flutter/material.dart';

class HYMealViewModel extends BaseMealViewModel{

  HYMealViewModel() {
    HYMealRequest.getMealData().then((value) {
      meals = value;
    });
  }
}