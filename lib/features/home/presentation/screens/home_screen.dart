import 'package:flutter/material.dart';
import 'package:notification_using_api_flutter/features/home/presentation/widgets/home_screen_widgets.dart';

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
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 18, left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //! LOCATION SELECTOR
                  HomeScreenWidgets.buildLocationDisplay(),
                  SizedBox(height: 15),

                  //! SEARCH-BAR
                  HomeScreenWidgets.buildSearchBar(context),
                  SizedBox(height: 18),

                  //! CATEGORY SECTION TITILE
                  HomeScreenWidgets.buildCategoryTitle(),
                  SizedBox(height: 14),

                  //! CATEGORIES GRIDVIEW
                  HomeScreenWidgets.buildCategories(context),
                  SizedBox(height: 16),

                  //! TOP PICKS HEADING
                  HomeScreenWidgets.buildToppicks(),
                  SizedBox(height: 14),

                  //! TOP PICKS BANNER
                  HomeScreenWidgets.buildTopPicksBanner(),
                  SizedBox(height: 24),

                  //! TRENDIND & SEEALL TEXT
                  HomeScreenWidgets.buildTrendingTextAndMoreText(),
                  SizedBox(height: 14),

                  //! TRENDING ITEMS LIST
                  HomeScreenWidgets.buildTrendingItems(),
                  SizedBox(height: 24),

                  //! CRAZE DEALS TEXT
                  HomeScreenWidgets.buildCrazeDealsText(),
                  SizedBox(height: 14),

                  //! CRAZE DEALS BANNERS LIST
                  HomeScreenWidgets.buildScrollableCrazeDealsBanners(),
                  SizedBox(height: 24),

                  //! REFER AND EARN BANNER
                  HomeScreenWidgets.buildReferAndEarnBanner(),
                  SizedBox(height: 24),

                  //! NEARBY STORES SECTION
                  HomeScreenWidgets.buildNearbyandSeeallText(),
                  SizedBox(height: 14),

                  //! NEARBY STORE ITEMS
                  HomeScreenWidgets.buildNearbyStoreItem(),
                  SizedBox(height: 22),
                  HomeScreenWidgets.buildNearbyStoreItem(),
                  SizedBox(height: 50),

                  //! VIEW ALL STORE BUTTON
                  HomeScreenWidgets.buildViewallStoresButton(),
                  SizedBox(height: 40)
                ],
              ),
            ),
          ),
        ));
  }
}
