import 'package:flutter/material.dart';
import 'package:notification_using_api_flutter/core/navigation/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notification_Using_Api_Flutter',
      home: BottomNavigationBarScreen(),
    );
  }
}
