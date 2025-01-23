class NotificationModel {
  final String image;
  final String title;
  final String body;
  final DateTime timestamp;

  NotificationModel(
      {required this.image,
      required this.title,
      required this.body,
      required this.timestamp});

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
        image: json['image'] ?? '',
        title: json['title'] ?? '',
        body: json['body'] ?? '',
        timestamp: DateTime.parse(json['timestamp']));
  }
}
