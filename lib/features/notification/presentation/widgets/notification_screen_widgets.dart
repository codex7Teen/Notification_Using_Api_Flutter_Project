import 'package:flutter/material.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';
import 'package:notification_using_api_flutter/core/config/app_text_styles.dart';

class NotificationScreenWidgets {
  static PreferredSizeWidget buildAppBar(BuildContext context) {
    return AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Container(
            height: 0.4,
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: 0.5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withValues(alpha: 0.5),
                    offset: Offset(0, 1),
                    blurRadius: 1,
                    spreadRadius: 0.2),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.whiteColor,
        actions: [
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 18),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: AppColors.greenAppthemeColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      size: 30,
                      Icons.arrow_back_rounded,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  'Notifications',
                  style: AppTextStyles.trendingItemTitle,
                )
              ],
            ),
          ),
        ]);
  }
}
