import 'package:b_library/controller/services/splash_services.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

//for custom Splash Screen🐱‍🏍
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.network(
            'https://assets1.lottiefiles.com/packages/lf20_dysweam7.json'),
      ),
    );
  }
}
