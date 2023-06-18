import 'package:flutter/material.dart';
import 'package:odii_translation_test/screens/dashboard/dashboard_screen.dart';
import 'package:odii_translation_test/screens/home/home_page_screen.dart';

import 'constant/colors.dart';
import 'constant/fonts.dart';
import 'router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///App Setup
    ///Set up Initial route to the Dashboard
    ///Routes are in the Router module
    return MaterialApp(
      title: 'MoveMate',
      debugShowCheckedModeBanner: false,
      initialRoute: DashboardScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        fontFamily: AppFonts.Poppins,
        accentColor: Colors.white,
        // primarySwatch: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

    );
  }
}
