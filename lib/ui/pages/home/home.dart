import 'home_content.dart';
import 'package:flutter/material.dart';
class HYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
      ),
      body: HYHomeContent(),
    );
  }
}
