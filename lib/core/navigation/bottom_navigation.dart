import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';
import 'package:notification_using_api_flutter/features/home/presentation/screens/home_screen.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  final List<String> navBarImages = [
    'assets/images/home_icon.png',
    'assets/images/cart_icon.png',
    'assets/images/my_order_icon.png',
    'assets/images/account_icon.png'
  ];

  BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenHome(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3), // shadow color
            blurRadius: 4, // Blur the shadown for smoothness,
          )
        ]),
        child: BottomNavigationBar(
            backgroundColor: AppColors.whiteColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black54,
            unselectedItemColor: Colors.black54,
            selectedLabelStyle: GoogleFonts.quicksand(
                fontWeight: FontWeight.w900, fontSize: 14.5),
            unselectedLabelStyle: GoogleFonts.quicksand(
                fontWeight: FontWeight.w800, fontSize: 14),
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4, top: 4),
                    child: Image.asset(
                      navBarImages[0],
                      width: 30,
                    ),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4, top: 4),
                    child: Image.asset(
                      navBarImages[1],
                      width: 30,
                    ),
                  ),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4, top: 4),
                    child: Image.asset(
                      navBarImages[2],
                      width: 24,
                    ),
                  ),
                  label: 'My Order'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4, top: 4),
                    child: Image.asset(
                      navBarImages[3],
                      width: 28,
                    ),
                  ),
                  label: 'Account'),
            ]),
      ),
    );
  }
}
