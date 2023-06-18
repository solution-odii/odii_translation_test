
import 'package:flutter/material.dart';
import 'package:odii_translation_test/screens/calculate/calculate_screen.dart';
import 'package:odii_translation_test/screens/dashboard/dashboard_screen.dart';
import 'package:odii_translation_test/screens/home/home_page_screen.dart';
import 'package:odii_translation_test/screens/home/search_screen.dart';
import 'package:odii_translation_test/screens/shipment/shipment_tab_screen.dart';

import '../screens/calculate/calculate_success_screen.dart';



class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case DashboardScreen.routeName:
        return MaterialPageRoute(builder: (_) => DashboardScreen());

        case HomePageScreen.routeName:
        return MaterialPageRoute(builder: (_) => HomePageScreen());

        case SearchScreen.routeName:
        return MaterialPageRoute(builder: (_) => SearchScreen());

        case ShipmentTabScreen.routeName:
        return MaterialPageRoute(builder: (_) => ShipmentTabScreen());

        case CalculateScreen.routeName:
        return MaterialPageRoute(builder: (_) => CalculateScreen());

        case CalculateSuccessScreen.routeName:
        return MaterialPageRoute(builder: (_) => CalculateSuccessScreen());

      default:
      // If there is no such named route in the switch statement, e.g. /third
      // return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
