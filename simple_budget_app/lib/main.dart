import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_budget_app/router/router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        theme: ThemeData(
          brightness: Brightness.light, // Light theme
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark, // Dark theme
          primarySwatch: Colors.indigo,
        ),
        themeMode: ThemeMode.dark, // Set dark theme as default
        routerConfig: router,
      ),
    );
  }
}
