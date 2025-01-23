import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';

class AppTextStyles {
  //! LOCATION TEXT
  static TextStyle locationText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w900, fontSize: 14.5, color: AppColors.blackColor);

  //! SEARCHBAR TEXT
  static TextStyle searchBarText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w800, color: Colors.grey, fontSize: 15);

  //! APP MAIN SUB TITLES
  static TextStyle appMainSubtitles = GoogleFonts.quicksand(
      fontWeight: FontWeight.w900, fontSize: 20, color: AppColors.blackColor);

  //! OFFER PERCENTAGE TEXT
  static TextStyle offerPercentageText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w600, color: AppColors.whiteColor, fontSize: 8.2);

  //! CATEGORY ITEMS TEXT
  static TextStyle categoryItemsText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w600, color: AppColors.blackColor, fontSize: 14);

  //! CATEGORY MORE TEXT
  static TextStyle categoryMoreText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w900,
      fontSize: 14.5,
      color: AppColors.greenAppthemeColor);

  //! TOP PICKS BANNER TEXT
  static TextStyle topPicksBannerMainText = GoogleFonts.poppins(
      fontWeight: FontWeight.w700, fontSize: 22, color: Colors.white);

  //! TOP PICKS BANNER BUTTON TEXT
  static TextStyle topPicksBannerButtonText = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 15, color: Colors.white);

  //! TRENDING ITEM TTILE
  static TextStyle trendingItemTitle = GoogleFonts.quicksand(
      fontWeight: FontWeight.w900, fontSize: 18, color: AppColors.blackColor);

  //! TRENDING ITEM SUB TTILE
  static TextStyle trendingItemSubTitle = GoogleFonts.quicksand(
      fontWeight: FontWeight.w500, fontSize: 12.2, color: AppColors.blackColor);

  //! TRENDING ITEM FINAL TTILE
  static TextStyle trendingItemFinalTitle = GoogleFonts.quicksand(
      fontWeight: FontWeight.w500, fontSize: 15.5, color: AppColors.blackColor);

  //! REFER AND EARN BANNER INVITE TEXT
  static TextStyle referandearnInviteText = GoogleFonts.quicksand(
    fontWeight: FontWeight.w600,
    fontSize: 14.5,
    color: AppColors.whiteColor,
  );

  //! CRAZE DEALS BANNER MAIN TEXT
  static TextStyle crazedealsBannerMaintext = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 21, color: Colors.white);

  //! CRAZE DEALS BANNER SECOND TEXT
  static TextStyle crazedealsBannerSecondText = GoogleFonts.quicksand(
      fontWeight: FontWeight.w800, fontSize: 17, color: AppColors.orangeColor);

  //! VIEW ALL STORES BUTTON
  static TextStyle buildViewallStoresButton = GoogleFonts.poppins(
      fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.whiteColor);
}
