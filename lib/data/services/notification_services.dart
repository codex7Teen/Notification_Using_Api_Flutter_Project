import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:notification_using_api_flutter/core/config/app_constants.dart';
import 'package:notification_using_api_flutter/data/models/notification_model.dart';

class NotificationServices {
  //! FETCH NOTIFICATION
  Future<List<NotificationModel>> fetchNotifications() async {
    try {
      final response = await http.get(Uri.parse(AppConstants.apiKey));

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseBody = jsonDecode(response.body);

        // Main list of notification is inside the data.
        final List<dynamic> notificationsJson = responseBody['data'];

        return notificationsJson
            .map((json) => NotificationModel.fromJson(json))
            .toList();
      } else {
        log('Failed to load Notifications');
        throw Exception('Failed to load Notifications');
      }
    } catch (error) {
      log('Error fetching notifications: $error');
      throw Exception('Error fetching notifications: $error');
    }
  }
}
