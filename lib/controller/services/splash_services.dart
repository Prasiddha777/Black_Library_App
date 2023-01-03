import 'dart:async';

import 'package:b_library/utils/routes/route_name.dart';
import 'package:flutter/cupertino.dart';

//for custom Splash Screens🐱‍🏍
class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
      const Duration(
        seconds: 5,
      ),
      () {
        Navigator.pushNamed(context, RouteName.homeScreen);
      },
    );
  }
}
