import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_sales_force_automation/presentation/absent/pages/absensi_page.dart';
import 'package:mobile_sales_force_automation/presentation/home.dart';
import 'package:mobile_sales_force_automation/presentation/pesanpage/pages/pesan_page.dart';
import 'package:mobile_sales_force_automation/presentation/settingpage/pages/setting_page.dart';

class ScreenController extends StatefulWidget {
  const ScreenController({super.key});

  @override
  State<ScreenController> createState() => _ScreenControllerState();
}

class _ScreenControllerState extends State<ScreenController> {
  int _currentIndex = 0;

  final List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  final List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  final screens = [
    const HomePage(title: ''),
    const PesanPage(),
    const AbsensiPage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        // color: Colors.red[50],
        child: _buildTitle(),
      ),
    );
  }

  Widget _buildTitle() {
    return CustomNavigationBar(
      // elevation: 0,
      borderRadius: const Radius.circular(0),
      iconSize: 30.0,
      selectedColor: const Color(0xff40c4ff),
      strokeColor: const Color(0xff40c4ff),
      unSelectedColor: const Color(0xffacacac),
      // backgroundColor: Colors.transparent,
      items: [
        CustomNavigationBarItem(
          icon: const Icon(Icons.home_filled),
          // title: const Text(
          //   "Home",
          //   style: TextStyle(
          //     color: Color(0xff40c4ff),
          //   ),
          // ),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.mail),
          badgeCount: _badgeCounts[1],
          showBadge: _badgeShows[1],
          // title: const Text("Mail"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.fact_check),
          // title: const Text("Attendance"),
        ),
        CustomNavigationBarItem(
          icon: const Icon(Icons.settings),
          // title: const Text("Setting"),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
