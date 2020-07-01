import 'package:favorcate/core/model/meal_model.dart';
import 'package:flutter/cupertino.dart';

import 'filter_view_model.dart';

class BaseMealViewModel extends ChangeNotifier {
  List<HYMealModel> _meals = [];
  HYFulterViewModel _filterVM ;
  List<HYMealModel> get meals {
    return _meals.where((element) {
      // 过滤
      if(_filterVM.isGlutenFree && !element.isGlutenFree)
        return false;
      if(_filterVM.isLactoseFree && !element.isLactoseFree)
        return false;
      if(_filterVM.isVegetarian && !element.isVegetarian)
        return false;
      if(_filterVM.isVegan && !element.isVegan)
        return false;
      return true;
    }).toList();
  }

  List<HYMealModel> get originMeals {
    return _meals;
  }

  void updateFilters(HYFulterViewModel filterVM) {
    _filterVM = filterVM;
  }

  set meals(List<HYMealModel> value) {
    _meals = value;
    notifyListeners();
  }
}