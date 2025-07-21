import 'package:flutter/material.dart';
import 'package:mobile_sales_force_automation/core/configs/theme/app_theme.dart';
import 'package:mobile_sales_force_automation/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan banner DEBUG
      title: 'Mobile Sales Force Automation',
      theme: AppTheme.lightTheme,
      home: const SplashPage(),
    );
  }
}
