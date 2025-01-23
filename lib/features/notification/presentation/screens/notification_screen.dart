import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';
import 'package:notification_using_api_flutter/data/services/notification_services.dart';
import 'package:notification_using_api_flutter/features/notification/presentation/widgets/notification_screen_widgets.dart';

class ScreenNotifications extends StatelessWidget {
  final notificaitionServices = NotificationServices();
  ScreenNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch and log notifications when the screen builds
    notificaitionServices.fetchNotifications().then((notifications) {
      log('Total Notifications: ${notifications.length}');
      notifications.forEach((notification) {
        log('Notification - Title: ${notification.title}, Body: ${notification.body}');
      });
    }).catchError((error) {
      log('Error in Notification Screen: $error');
    });
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        //! APPBAR
        appBar: NotificationScreenWidgets.buildAppBar(context));
  }
}
