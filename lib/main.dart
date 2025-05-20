import 'package:flutter/material.dart';
import 'services/notification_service.dart';
import 'pages/home_screen_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await NotificationService.initializeNotification();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey, 
      title: 'Notifikasi App',
      home: const HomeScreen(),
    );
  }
}