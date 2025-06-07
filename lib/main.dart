import 'package:flutter/material.dart';
import 'app/router.dart';
import 'app/theme.dart';

void main() {
  runApp(QuickChatApp());
}

class QuickChatApp extends StatelessWidget {
  const QuickChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'QuickChat',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
