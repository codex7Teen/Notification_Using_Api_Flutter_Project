import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_using_api_flutter/core/config/app_colors.dart';
import 'package:notification_using_api_flutter/core/config/app_text_styles.dart';
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
        body: BlocBuilder<NotificationBloc, NotificationState>(
          builder: (context, state) {
            if (state is NotificationLoadingState) {
              return Center(
                  child: SizedBox(
                    width: 26,
                    height: 26,
                    child: CircularProgressIndicator(
                        color: AppColors.greenAppthemeColor),
                  ));
            } else if (state is NotificationErrorState) {
              return Center(child: Text('Failed to load notifications!!!'));
            } else if (state is NotificationLoadedState) {
              final notificaitonModel = state.notifications;
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView.separated(
                  itemCount: state.notifications.length,
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemBuilder: (context, index) {
                    final notifications = notificaitonModel[index];
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, bottom: 3, top: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 34,
                              width: 34,
                              child: Image.asset(context
                                  .read<NotificationBloc>()
                                  .getNotificationImagePath(
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
                                    style: AppTextStyles.notificationTitle),
                                SizedBox(height: 6),
                                Text(
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  notifications.body,
                                  style: AppTextStyles.notificationSubTitle,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  overflow: TextOverflow.ellipsis,
                                  context
                                      .read<NotificationBloc>()
                                      .formatTimestamp(notifications.timestamp),
                                  style: AppTextStyles.notificationTimeText,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            }
            return Text('Something went wrong! Please retry...');
          },
        ));
  }
}
