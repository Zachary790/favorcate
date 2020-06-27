import 'dart:convert';

import 'package:flutter/services.dart';
import '../model/category_model.dart';

class JsonParse {
  static Future<List<HYCategoryModel>> getCategoryData() async {
    // 加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");
    // json转Map/List
   final result = json.decode(jsonString);
   // 将map的内容转成一个对象
    final resultList = result["category"];
    List<HYCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(HYCategoryModel.fromJson(json));
    }
    return categories;
  }
}