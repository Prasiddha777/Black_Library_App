import 'package:b_library/utils/routes/route_name.dart';
import 'package:b_library/view/Screens/home_screen.dart';
import 'package:b_library/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text(
                      'No Such Routes Defined',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ));
    }
  }
}
