import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';
import 'package:notification_using_api_flutter/data/services/notification_services.dart';
import 'package:notification_using_api_flutter/features/notification/bloc/notification_bloc/notification_bloc.dart';
import 'package:notification_using_api_flutter/features/notification/presentation/widgets/notification_screen_widgets.dart';

class ScreenNotifications extends StatelessWidget {
  final notificaitionServices = NotificationServices();
  ScreenNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        //! APPBAR
        appBar: NotificationScreenWidgets.buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
              if (state is NotificationLoadingState) {
                return Center(
                    child: CircularProgressIndicator(
                        color: AppColors.greenAppthemeColor));
              } else if (state is NotificationErrorState) {
                return Center(child: Text('Failed to load notifications!!!'));
              } else if (state is NotificationLoadedState) {
                final notificaitonModel = state.notifications;
                return ListView.separated(
                  itemCount: state.notifications.length,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemBuilder: (context, index) {
                    final notifications = notificaitonModel[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset(_getNotificationImagePath(
                                notifications.image))),
                        SizedBox(width: 18),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  overflow: TextOverflow.ellipsis,
                                  notifications.title,
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 17,
                                      color: AppColors.blackColor)),
                              SizedBox(height: 6),
                              Text(
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                notifications.body,
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: AppColors.blackColor),
                              ),
                              SizedBox(height: 4),
                              Text(
                                overflow: TextOverflow.ellipsis,
                                '57 mins ago',
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13.5,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                );
              }
              return Text('Something went wrong! Please retry...');
            },
          ),
        ));
  }

  // Method to get image path based on api data
  String _getNotificationImagePath(String imageName) {
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
}
