import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:odii_translation_test/constant/fonts.dart';
import 'package:odii_translation_test/screens/calculate/calculate_screen.dart';
import 'package:odii_translation_test/screens/home/home_page_screen.dart';
import 'package:odii_translation_test/screens/shipment/shipment_tab_screen.dart';

import '../../constant/colors.dart';
class DashboardScreen extends StatefulWidget {
  static const routeName = '/dashboard';

  int selectedIndex = 0;
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  final List<Widget> _customerChildren = [
   HomePageScreen(),
   CalculateScreen(),
    ShipmentTabScreen(),
   HomePageScreen(),
  ];

  final List<BottomNavigationBarItem> customerBottomNavMenu = [
    const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.house),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.calculator),
      label: 'Calculate',
    ),
    const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.ship),
      label: 'Shipment',
    ),

    const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.person),
      label: 'Profile',
    ),
  ];

  void _onItemTapped(int index) {
    if(widget.selectedIndex == 0 || widget.selectedIndex == 3) {
      setState(() {
        widget.selectedIndex = index;
      });
    }
  }
  final _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      body: _customerChildren[widget.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items:  customerBottomNavMenu,
        currentIndex: widget.selectedIndex,

        // currentIndex: _selectedIndex,
        selectedItemColor:  widget.selectedIndex != 0 &&  widget.selectedIndex != 3 ? Colors.white : AppColors.primaryColor,
        unselectedItemColor: widget.selectedIndex != 0 &&  widget.selectedIndex != 3 ? Colors.white : AppColors.grayColor,
        selectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontFamily: AppFonts.Poppins,
            fontWeight: FontWeight.w300),
        unselectedLabelStyle: const TextStyle(
            fontSize: 10,
            fontFamily: AppFonts.Poppins,
            fontWeight: FontWeight.w300),
        // backgroundColor: AppColors.,

        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
