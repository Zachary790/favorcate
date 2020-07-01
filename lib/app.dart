import 'package:favorcate/core/router/route.dart';
import 'package:favorcate/ui/shared/app_theme.dart';
import 'package:favorcate/ui/shared/size_fit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize();
    return MaterialApp(
      title: '美食广场',
      // 关于主题
      theme: HYAppTheme.norTheme,
      supportedLocales: [
        Locale("zh"),
        Locale("en"),
      ],  // 国际化
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      // 路由
      initialRoute: HYRouter.initIalRouter,
      routes: HYRouter.routes,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}