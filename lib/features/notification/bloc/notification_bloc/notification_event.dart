part of 'notification_bloc.dart';

abstract class NotificationEvent extends Equatable {
  const NotificationEvent();

  @override
  List<Object> get props => [];
}

//! FETCH NOTIFICATION BLOC
class FetchNotificationsEvent extends NotificationEvent {}