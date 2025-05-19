// In main.dart, ensure you have this setup:
import 'package:flutter/material.dart';
import 'services/notification_service.dart';
import 'pages/home_screen_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize notifications before runApp
  await NotificationService.initializeNotification();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey, // Important for navigation from notifications
      title: 'Notifikasi App',
      home: const HomeScreen(),
    );
  }
}