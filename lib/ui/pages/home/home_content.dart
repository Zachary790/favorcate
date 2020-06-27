import 'package:favorcate/core/model/category_model.dart';

import '../../../core/services/json_parse.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
class HYHomeContent extends StatefulWidget {
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<HYCategoryModel> _categories = [];
  @override
  void initState() {
    super.initState();
    print('----------');
    // 加载数据
    JsonParse.getCategoryData().then((value) {
      setState(() {
        _categories = value;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(20.px),
      itemCount: _categories.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20.px,
        mainAxisSpacing: 20.px,
        childAspectRatio: 1.5
      ),
      itemBuilder: (ctx, index) {
        final bgColor = _categories[index].cColor;
        return Container(
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
              colors: [
                bgColor.withOpacity(.5),
                bgColor
              ]
            )
          ),
          alignment: Alignment.center,
          child: Text(
            _categories[index].title,
            style: Theme.of(context).textTheme.display2.copyWith(
              fontWeight: FontWeight.bold
            ),
          )
        );
      }
    );
  }
}
