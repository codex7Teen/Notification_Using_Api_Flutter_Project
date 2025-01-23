import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notification_using_api_flutter/data/models/notification_model.dart';
import 'package:notification_using_api_flutter/data/services/notification_services.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationServices notificationServices;
  NotificationBloc(this.notificationServices) : super(NotificationInitial()) {
    //! FETCH NOTIFICATION BLOC
    on<FetchNotificationsEvent>((event, emit) async {
      emit(NotificationLoadingState());
      try {
        final notifications = await notificationServices.fetchNotifications();
        emit(NotificationLoadedState(notifications));
      } catch (error) {
        emit(NotificationErrorState(error.toString()));
      }
    });
  }
}
