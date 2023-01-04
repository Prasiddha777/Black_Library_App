import 'package:b_library/resources/constants/color.dart';
import 'package:b_library/resources/constants/fonts.dart';
import 'package:b_library/utils/routes/route_name.dart';
import 'package:b_library/utils/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Black Tech Library',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // theme for text styles
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontFamily: AppFonts.sfProDisplayMedium,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),

          //2
          headline2: TextStyle(
            fontSize: 32,
            fontFamily: AppFonts.sfProDisplayMedium,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          //3
          headline3: TextStyle(
            fontSize: 28,
            fontFamily: AppFonts.sfProDisplayMedium,
            fontWeight: FontWeight.w500,
            height: 1.9,
          ),
          //4
          headline4: TextStyle(
            fontSize: 24,
            fontFamily: AppFonts.sfProDisplayMedium,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
          //5
          headline5: TextStyle(
            fontSize: 20,
            fontFamily: AppFonts.sfProDisplayMedium,
            fontWeight: FontWeight.w500,
            height: 1,
          ),
          //6
          headline6: TextStyle(
            fontSize: 17,
            fontFamily: AppFonts.sfProDisplayBold,
            fontWeight: FontWeight.w700,
            height: 1.6,
          ),

          //body
          bodyText1: TextStyle(
            fontSize: 17,
            fontFamily: AppFonts.sfProDisplayBold,
            fontWeight: FontWeight.w700,
            height: 1.6,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            fontFamily: AppFonts.sfProDisplayRegular,
            height: 1.6,
          ),
          //caption
          caption: TextStyle(
            fontSize: 12,
            fontFamily: AppFonts.sfProDisplayRegular,
            height: 2.26,
          ),
        ),
      ),
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
