part of 'notification_bloc.dart';

abstract class NotificationState extends Equatable {
  const NotificationState();

  @override
  List<Object> get props => [];
}

final class NotificationInitial extends NotificationState {}

//! LOADING
class NotificationLoadingState extends NotificationState {}

//! LOADED SUCCESFULLY
class NotificationLoadedState extends NotificationState {
  final List<NotificationModel> notifications;
  const NotificationLoadedState(this.notifications);

  @override
  List<Object> get props => [notifications];
}

//! ERROR
class NotificationErrorState extends NotificationState {
  final String errorMessage;
  const NotificationErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
