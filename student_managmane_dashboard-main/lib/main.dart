import 'package:flutter/material.dart';
import 'package:student_managmane_dashboard/Navigation/onGenerateRout.dart';
import 'Pages/Dashboard/DashboardPage/dashboard_page.dart';
import 'ScreenSizes/screen_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.sizeOf(context);
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Management',
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: onGenerateRout,
      initialRoute: Dashboard.name,
    );
  }
}
