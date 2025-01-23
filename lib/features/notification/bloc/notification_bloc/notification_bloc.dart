import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_using_api_flutter/data/models/notification_model.dart';
import 'package:notification_using_api_flutter/data/services/notification_services.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  //! GET IMAGE PATH BASED ON API IMAGE DATA
  // Method to get image path based on api data
  String getNotificationImagePath(String imageName) {
    switch (imageName) {
      case 'order_assigned.png':
        return 'assets/images/notification_images/order_assigned.png';
      case 'order_delivered.png':
        return 'assets/images/notification_images/order_delivered.png';
      case 'order_cancelled.png':
        return 'assets/images/notification_images/order_cancelled.png';
      case 'promotion_marketplace.png':
        return 'assets/images/notification_images/promotion_marketplace.png';
      case 'promotion_notify.png':
        return 'assets/images/notification_images/promotion_nootify.png';
      case 'support_personnel.png':
        return 'assets/images/notification_images/support_peersonnel.png';
      default:
        return 'assets/images/notification_images/order_assigned.png';
    }
  }

  //! GET THE INFO ABOUT THE NOTIFICATION TIME
  String formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} mins ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 30) {
      return '${difference.inDays} days ago';
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return '$months months ago';
    } else {
      final years = (difference.inDays / 365).floor();
      return '$years years ago';
    }
  }

  final NotificationServices notificationServices;
  NotificationBloc(this.notificationServices) : super(NotificationInitial()) {
    //! FETCH NOTIFICATION BLOC
    on<FetchNotificationsEvent>((event, emit) async {
      emit(NotificationLoadingState());
      try {
        final notifications = await notificationServices.fetchNotifications();
        log('BLOC: NOTIFICATION FETCHED SUCCESSFULLY');
        emit(NotificationLoadedState(notifications));
      } catch (error) {
        emit(NotificationErrorState(error.toString()));
      }
    });
  }
}
