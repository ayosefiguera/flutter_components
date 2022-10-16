import 'package:fl_components/router/app_router.dart';
import 'package:fl_components/themes/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//This is the entrance to our app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LearningFlutter',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),           //custon route, need a Map item.
        onGenerateRoute: AppRoutes.onGenerateRoute, 
        theme: AppTheme.baseTheme,                  //we can apply a custom theme
        );
  }
}
