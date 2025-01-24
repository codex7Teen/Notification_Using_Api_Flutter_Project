import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';
import 'package:notification_using_api_flutter/core/config/app_text_styles.dart';
import 'package:notification_using_api_flutter/features/notification/presentation/screens/notification_screen.dart';

class HomeScreenWidgets {
  static Widget buildLocationDisplay() {
    return Row(
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
    );
  }

  static Widget buildSearchBar(BuildContext context) {
    return Row(
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
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ScreenNotifications(),
            )),
            child: Stack(
              children: [
                Icon(Icons.notifications_none_outlined,
                    size: 32, color: AppColors.redColor),
                Positioned(
                    right: 0,
                    top: -5,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 5, right: 5, top: 4, bottom: 5.6),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.redColor),
                      child: Text('2',
                          style: AppTextStyles.notificationIconTextStyle),
                    ))
              ],
            ),
          ),
        ),
        Icon(Icons.local_offer_outlined, size: 27, color: AppColors.orangeColor)
      ],
    );
  }

  static Widget buildCategoryTitle() {
    return Text(
      'What would you like to do today?',
      style: AppTextStyles.appMainSubtitles,
    );
  }

  static Widget buildCategories(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.68,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return HomeScreenWidgets.categories[index];
              },
            ),
            SizedBox(height: 8)
          ],
        ),
        Positioned(
            bottom: 0,
            left: MediaQuery.sizeOf(context).width * 0.4,
            child: //! MORE BUTTON
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                Text('More', style: AppTextStyles.categoryMoreText),
                Icon(Icons.keyboard_arrow_down_rounded,
                    color: AppColors.greenAppthemeColor)
              ],
            ))
      ],
    );
  }

  static Widget buildToppicks() {
    return Text(
      'Top picks for you',
      style: AppTextStyles.appMainSubtitles,
    );
  }

  static Widget buildTrendingTextAndMoreText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Trending', style: AppTextStyles.appMainSubtitles),
        Text('See all', style: AppTextStyles.categoryMoreText)
      ],
    );
  }

  static Widget buildTopPicksBanner() {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 30),
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.greenAppthemeColor),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      textAlign: TextAlign.start,
                      'DISCOUNT\n25% ALL\nFRUITS',
                      style: AppTextStyles.topPicksBannerMainText),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.orangeColor),
                    child: Text('CHECK NOW',
                        style: AppTextStyles.topPicksBannerButtonText),
                  )
                ],
              )
            ],
          ),
          Positioned(
              right: 12,
              bottom: 0,
              child: Image.asset('assets/images/top_picks_banner_nobg.png'))
        ],
      ),
    );
  }

  static Widget buildTrendingItemCard() {
    return Row(
      spacing: 13,
      children: [
        Image.asset('assets/images/ice_cream_image.png', scale: 0.95),
        Column(
          spacing: 2,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Mithas Bhandar', style: AppTextStyles.trendingItemTitle),
            Text('Sweets, North Indian',
                style: AppTextStyles.trendingItemSubTitle),
            Text('store location | 6.4 kms',
                style: AppTextStyles.trendingItemSubTitle),
            Row(
              children: [
                Icon(Icons.star_rate_rounded, size: 18),
                Text('4.1 | 45 mins',
                    style: AppTextStyles.trendingItemFinalTitle)
              ],
            )
          ],
        ),
      ],
    );
  }

  static Widget buildTrendingItems() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Column
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Item
              HomeScreenWidgets.buildTrendingItemCard(),
              SizedBox(
                height: 20,
              ),
              // Second Item
              HomeScreenWidgets.buildTrendingItemCard()
            ],
          ),
          SizedBox(width: 30),

          // Second Column
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // First Item
              HomeScreenWidgets.buildTrendingItemCard(),
              SizedBox(
                height: 20,
              ),
              // Second Item
              HomeScreenWidgets.buildTrendingItemCard()
            ],
          ),
          SizedBox(width: 30),
        ],
      ),
    );
  }

  static Widget buildCrazeDealsText() {
    return Text('Craze deals', style: AppTextStyles.appMainSubtitles);
  }

  static Widget buildReferAndEarnBanner() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greenAppthemeColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 27, left: 14, right: 12),
            child: Column(
              spacing: 1,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    'Refer & Earn',
                    style: AppTextStyles.appMainSubtitles.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invite your friends & earn 15% off',
                      style: AppTextStyles.referandearnInviteText,
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_circle_right_rounded,
                        color: AppColors.whiteColor),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 10,
            child: Image.asset('assets/images/gift_image.png'),
          ),
        ],
      ),
    );
  }

  static Widget buildCrazeDealsBanner() {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.blackColor, borderRadius: BorderRadius.circular(14)),
      child: Stack(
        children: [
          Positioned(
            right: -5,
            bottom: 0,
            child: Image.asset(
              'assets/images/craze_deals_banner_image.png',
              scale: 0.93,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 28, top: 25, bottom: 42, right: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer favorite',
                  style: AppTextStyles.crazedealsBannerMaintext,
                ),
                SizedBox(height: 1),
                Text(
                  'top supermarkets',
                  style: AppTextStyles.crazedealsBannerMaintext,
                ),
                SizedBox(height: 12),
                Row(
                  spacing: 3,
                  children: [
                    Text(
                      'Explore',
                      style: AppTextStyles.crazedealsBannerSecondText,
                    ),
                    Icon(Icons.arrow_forward_rounded,
                        color: AppColors.orangeColor)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildScrollableCrazeDealsBanners() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //! FIRST BANNER
          HomeScreenWidgets.buildCrazeDealsBanner(),
          SizedBox(width: 20),
          //! SECOND BANNER
          HomeScreenWidgets.buildCrazeDealsBanner(),
        ],
      ),
    );
  }

  static Widget buildNearbyandSeeallText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Nearby stores', style: AppTextStyles.appMainSubtitles),
        Text('See all', style: AppTextStyles.categoryMoreText)
      ],
    );
  }

  static Widget buildNearbyStoreItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 13,
      children: [
        Image.asset('assets/images/nearbystores_image.png', scale: 0.94),
        Expanded(
          child: Stack(
            children: [
              Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Freshly Baker', style: AppTextStyles.trendingItemTitle),
                  Text('Sweets, North Indian',
                      style: AppTextStyles.trendingItemSubTitle),
                  Text('Site No - 1 | 6.4 kms',
                      style: AppTextStyles.trendingItemSubTitle),
                  SizedBox(height: 2),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(4)),
                    child: Text('Top Store',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500,
                            fontSize: 9.5,
                            color: AppColors.blackColor)),
                  ),
                  Divider(color: Colors.grey[300]),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/offer_icon.png'),
                      SizedBox(width: 8),
                      Text(
                        'Upto 10% OFF',
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w700,
                            fontSize: 12.2,
                            color: AppColors.blackColor),
                      ),
                      SizedBox(width: 14),
                      Image.asset('assets/images/grocery_icon.png'),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          '3400+ items available',
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.2,
                              color: AppColors.blackColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                right: 0,
                top: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate_rounded, size: 18),
                        Text('4.1',
                            style: AppTextStyles.trendingItemFinalTitle),
                        SizedBox(width: 5)
                      ],
                    ),
                    Text(
                      '45 mins',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: AppColors.orangeColor),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  static Widget buildViewallStoresButton() {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 60),
        decoration: BoxDecoration(
            color: AppColors.greenAppthemeColor,
            borderRadius: BorderRadius.circular(14)),
        child: Text('View all stores',
            style: AppTextStyles.buildViewallStoresButton),
      ),
    );
  }

//! LIST OF CATEGORY WIDGETS
  static final List<Widget> categories = [
    //! FOOD DELIVERY
    Column(
      children: [
        Stack(children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                  spreadRadius: 0.01,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/category_images/fooddelivery_category.png',
              scale: 1.2,
            ),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 9),
                decoration: BoxDecoration(
                    color: AppColors.offerPurpleColor,
                    borderRadius: BorderRadius.circular(6)),
                child:
                    Text('10% Off', style: AppTextStyles.offerPercentageText),
              ))
        ]),
        const SizedBox(height: 7),
        Text('Food\nDelivery',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
    //! MEDICINES
    Column(
      children: [
        Stack(children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                  spreadRadius: 0.01,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/category_images/medicine_category.png',
              scale: 1.2,
            ),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 9),
                decoration: BoxDecoration(
                    color: AppColors.offerPurpleColor,
                    borderRadius: BorderRadius.circular(6)),
                child:
                    Text('10% Off', style: AppTextStyles.offerPercentageText),
              ))
        ]),
        const SizedBox(height: 7),
        Text('Medicines',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
    //! PET SUPPLIES
    Column(
      children: [
        Stack(children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                  spreadRadius: 0.01,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/category_images/pet_supplies_category.png',
              scale: 1.2,
            ),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 9),
                decoration: BoxDecoration(
                    color: AppColors.offerPurpleColor,
                    borderRadius: BorderRadius.circular(6)),
                child:
                    Text('10% Off', style: AppTextStyles.offerPercentageText),
              ))
        ]),
        const SizedBox(height: 7),
        Text('Pet\nSupplies',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
    //! GIFTS
    Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.12),
                offset: Offset(0, 2),
                blurRadius: 6,
                spreadRadius: 0.01,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/category_images/gifts_category.png',
            scale: 1.2,
          ),
        ),
        const SizedBox(height: 7),
        Text('Gifts',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
    //! MEAT
    Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.12),
                offset: Offset(0, 2),
                blurRadius: 6,
                spreadRadius: 0.01,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/category_images/meat_category.png',
            scale: 1.2,
          ),
        ),
        const SizedBox(height: 7),
        Text('Meat',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
    //! COSMETIC
    Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.12),
                offset: Offset(0, 2),
                blurRadius: 6,
                spreadRadius: 0.01,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/category_images/cosmetic_category.png',
            scale: 1.2,
          ),
        ),
        const SizedBox(height: 7),
        Text('Cosmetic',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
    //! STATIONERY
    Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.12),
                offset: Offset(0, 2),
                blurRadius: 6,
                spreadRadius: 0.01,
              ),
            ],
          ),
          child: Image.asset(
            'assets/images/category_images/statiionery_category.png',
            scale: 1.2,
          ),
        ),
        const SizedBox(height: 7),
        Text('Stationery',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
    //! STORES
    Column(
      children: [
        Stack(children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.12),
                  offset: Offset(0, 2),
                  blurRadius: 6,
                  spreadRadius: 0.01,
                ),
              ],
            ),
            child: Image.asset(
              'assets/images/category_images/stores_category.png',
              scale: 1.2,
            ),
          ),
          Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 9),
                decoration: BoxDecoration(
                    color: AppColors.offerPurpleColor,
                    borderRadius: BorderRadius.circular(6)),
                child:
                    Text('10% Off', style: AppTextStyles.offerPercentageText),
              ))
        ]),
        const SizedBox(height: 7),
        Text('Stores',
            textAlign: TextAlign.center,
            style: AppTextStyles.categoryItemsText),
      ],
    ),
  ];
}
