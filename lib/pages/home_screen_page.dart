import 'package:flutter/material.dart';
import 'package:awesome_notification/services/notification_service.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Notifikasi App'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Pilih jenis notifikasi yang ingin Anda coba'),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () async {
                      await NotificationService.createNotification(
                        id: 2,
                        title: 'Notification with Summary',
                        body: 'This is the body of the notification',
                        summary: 'Small summary',
                        notificationLayout: NotificationLayout.Inbox,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notifications),
                          SizedBox(width: 10),
                          Text('Notification with Summary'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  GestureDetector(
                    onTap: () async {
                      await NotificationService.createNotification(
                        id: 1,
                        title: 'Default Notification',
                        body: 'This is the body of the notification',
                        summary: 'Small summary',
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.notifications_active),
                          SizedBox(width: 10),
                          Text('Default Notification'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  GestureDetector(
                    onTap: () async {
                      await NotificationService.createNotification(
                        id: 3,
                        title: 'Progress Bar Notification',
                        body: 'This is the body of the notification',
                        summary: 'Small summary',
                        notificationLayout: NotificationLayout.ProgressBar,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.linear_scale),
                          SizedBox(width: 10),
                          Text('Progress Bar Notification'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  GestureDetector(
                    onTap: () async {
                      await NotificationService.createNotification(
                        id: 4,
                        title: 'Message Notification',
                        body: 'This is the body of the notification',
                        summary: 'Small summary',
                        notificationLayout: NotificationLayout.Messaging,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.message),
                          SizedBox(width: 10),
                          Text('Message Notification'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  GestureDetector(
                    onTap: () async {
                      await NotificationService.createNotification(
                        id: 5,
                        title: 'Big Image Notification',
                        body: 'This is the body of the notification',
                        summary: 'Small summary',
                        notificationLayout: NotificationLayout.BigPicture,
                        bigPicture: 'https://picsum.photos/300/200',
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.image),
                          SizedBox(width: 10),
                          Text('Big Image Notification'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  GestureDetector(
                    onTap: () async {
                      await NotificationService.createNotification(
                        id: 6,
                        title: 'Action Button Notification',
                        body: 'This is the body of the notification',
                        payload: {'navigate': 'true'},
                        actionButtons: [
                          NotificationActionButton(
                            key: 'action_button',
                            label: 'Click me',
                            actionType: ActionType.Default,
                          )
                        ],
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.amber[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.touch_app),
                          SizedBox(width: 10),
                          Text('Action Button Notification'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  GestureDetector(
                    onTap: () async {
                      await NotificationService.createNotification(
                        id: 7,
                        title: 'Scheduled Notification',
                        body: 'This is the body of the notification',
                        scheduled: true,
                        interval: Duration(seconds: 5),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.indigo[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.schedule),
                          SizedBox(width: 10),
                          Text('Scheduled Notification'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}