import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screeens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'history',
      name: 'Cargo Hystory',
      screen: const ListView1Screen(),
      icon: Icons.history,
    ),
    MenuOption(
      route: 'book',
      name: 'Books',
      screen: const CargoManager(),
      icon: Icons.book_outlined,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert',
      screen: const AlertScreen(),
      icon: Icons.notification_important_outlined,
    ),
    MenuOption(
      route: 'card',
      name: 'Card',
      screen: const CardScreen(),
      icon: Icons.document_scanner_outlined,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervisor_account_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_fill_outlined,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_outlined,
    ),
    MenuOption(
      route: 'slide',
      name: 'Slide',
      screen: const SliderScreen(),
      icon: Icons.slideshow_outlined,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'List View Builder',
      screen: const ListviewBuilderScreen(),
      icon: Icons.build_circle_outlined,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
