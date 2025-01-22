import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';
import 'package:notification_using_api_flutter/core/config/app_text_styles.dart';

class ScreenHome extends StatelessWidget {
  final List<String> navBarImages = [
    'assets/images/home_icon.png',
    'assets/images/cart_icon.png',
    'assets/images/my_order_icon.png',
    'assets/images/account_icon.png'
  ];

  ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 18, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! LOCATION SELECTOR
            Row(
              spacing: 4,
              children: [
                Icon(
                  Icons.location_on_rounded,
                  color: AppColors.greenAppthemeColor,
                ),
                Text('ABCD, New Delhi', style: AppTextStyles.locationText),
                Icon(Icons.keyboard_arrow_down_rounded,
                    color: AppColors.greenAppthemeColor, size: 28)
              ],
            ),
            SizedBox(height: 15),

            //! SEARCH-BAR
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppColors.searchbarLightGreyColor,
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Search for products/stores',
                            style: AppTextStyles.searchBarText),
                        Image.asset('assets/images/search_icon.png',
                            color: AppColors.greenAppthemeColor, width: 24)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(Icons.notifications_none_outlined,
                      size: 32, color: AppColors.redColor),
                ),
                Icon(Icons.local_offer_outlined,
                    size: 27, color: AppColors.orangeColor)
              ],
            ),
            SizedBox(
              height: 18,
            ),

            //! CATEGORY SECTION TITILE
            Text(
              'What would you like to do today?',
              style: AppTextStyles.appMainSubtitles,
            )
          ],
        ),
      ),
    ));
  }
}
