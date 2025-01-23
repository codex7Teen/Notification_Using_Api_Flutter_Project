import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_using_api_flutter/core/navigation/bottom_navigation.dart';
import 'package:notification_using_api_flutter/data/services/notification_services.dart';
import 'package:notification_using_api_flutter/features/notification/bloc/notification_bloc/notification_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationServices = NotificationServices();

    return BlocProvider(
      create: (context) => NotificationBloc(notificationServices)
        ..add(FetchNotificationsEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notification_Using_Api_Flutter',
        home: BottomNavigationBarScreen(),
      ),
    );
  }
}
