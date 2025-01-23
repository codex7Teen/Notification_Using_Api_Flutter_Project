import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:notification_using_api_flutter/core/config/app_constants.dart';
import 'package:notification_using_api_flutter/data/models/notification_model.dart';

class NotificationServices {
  //! FETCH NOTIFICATION SERVICE
  Future<List<NotificationModel>> fetchNotifications() async {
    try {
      final response = await http.get(Uri.parse(AppConstants.apiKey));

      switch (response.statusCode) {
        case 200:
          final Map<String, dynamic> responseBody = jsonDecode(response.body);
          final List<dynamic> notificationsJson = responseBody['data'];
          return notificationsJson
              .map((json) => NotificationModel.fromJson(json))
              .toList();

        case 400:
          log('Bad request: Invalid parameters');
          throw Exception('Bad request: Invalid parameters');

        case 401:
          log('Unauthorized: Authentication required');
          throw Exception('Unauthorized: Check your credentials');

        case 403:
          log('Forbidden: Insufficient permissions');
          throw Exception('Forbidden: You lack required permissions');

        case 404:
          log('Not found: Resource not available');
          throw Exception('Notifications endpoint not found');

        case 500:
          log('Server error: Internal server problem');
          throw Exception('Server error: Please try again later');

        default:
          log('Unexpected status code: ${response.statusCode}');
          throw Exception('Unexpected error occurred');
      }
    } catch (error) {
      log('Error fetching notifications: $error');
      rethrow;
    }
  }
}
