import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_notificaton/top_bar.dart';
import 'package:flutter/material.dart';

import 'notificationservice.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Colors.grey[200]!,
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TopBar(title: 'Awesome Notification'),
            ElevatedButton(
                onPressed: () async {
                  await NotificationService.showNotification(
                    title: "Title of the notification",
                    body: "Body of the notification",
                  );
                },
                child: Text("Normal Notification")),
            ElevatedButton(
                onPressed: () async {
                  await NotificationService.showNotification(
                    title: "Title of the notification",
                    body: "Body of the notification",
                    summary: "Small Summary",
                    notificationLayout: NotificationLayout.Inbox,
                  );
                },
                child: Text("Notification With Summary")),
            ElevatedButton(
                onPressed: () async {
                  await NotificationService.showNotification(
                    title: "Title of the notification",
                    body: "Body of the notification",
                    summary: "Small Summary",
                    notificationLayout: NotificationLayout.ProgressBar,
                  );
                },
                child: Text("Progress bar")),
            ElevatedButton(
                onPressed: () async {
                  await NotificationService.showNotification(
                    title: "Title of the notification",
                    body: "Body of the notification",
                    summary: "Small Summary",
                    notificationLayout: NotificationLayout.Messaging,
                  );
                },
                child: Text("Message Notification")),
            ElevatedButton(
                onPressed: () async {
                  await NotificationService.showNotification(
                    title: "Title of the notification",
                    body: "Body of the notification",
                    summary: "Small Summary",
                    notificationLayout: NotificationLayout.BigPicture,
                    bigPicture:
                        "https://files.tecnoblog.net/wp-content/uploads/2019/09/emoji.jpg",
                  );
                },
                child: Text("Big Image Notification")),
            ElevatedButton(
                onPressed: () async {
                  await NotificationService.showNotification(
                      title: "Title of the notification",
                      body: "Body of the notification",
                      payload: {
                        "navigate": "true",
                      },
                      actionButtons: [
                        NotificationActionButton(
                          key: 'check',
                          label: 'Check it out',
                          actionType: ActionType.SilentAction,
                          color: Colors.green,
                        )
                      ]);
                },
                child: Text("Action Buttons Notification")),
            ElevatedButton(
                onPressed: () async {
                  await NotificationService.showNotification(
                    title: "Scheduled Notification",
                    body: "Notification was fired after 5 seconds",
                    scheduled: true,
                    interval: 5,
                  );
                },
                child: Text("Scheduled Notification")),
          ],
        ),
      ),
    );
  }
}
