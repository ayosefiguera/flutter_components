import 'package:fl_components/router/app_router.dart';
import 'package:fl_components/themes/themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary),
                title: Text(AppRoutes.menuOptions[index].name),
                onTap: () {
                  /*MaterialPageRoute(
                      builder: (context) =>
                          AppRoutes.menuOptions[index].screen);*/
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
