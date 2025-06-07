import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/splash_screen.dart';
import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const QuickChatApp());
}

class QuickChatApp extends StatefulWidget {
  const QuickChatApp({super.key});

  @override
  State<QuickChatApp> createState() => _QuickChatAppState();
}

class _QuickChatAppState extends State<QuickChatApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    _router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(path: '/', builder: (_, __) => SplashScreen()),
        GoRoute(path: '/auth', builder: (_, __) => AuthScreen()),
        GoRoute(path: '/home', builder: (_, __) => HomeScreen()),
        GoRoute(path: '/chat', builder: (_, __) => ChatScreen()),
        GoRoute(path: '/profile', builder: (_, __) => ProfileScreen()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return MaterialApp.router(
          title: 'QuickChat',
          theme: ThemeData(
            colorSchemeSeed: Colors.blue,
            useMaterial3: true,
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            colorSchemeSeed: Colors.blue,
            useMaterial3: true,
            brightness: Brightness.dark,
          ),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
          builder: (context, child) {
            if (isMobile) {
              // Mobile: show normal app fullscreen
              return child!;
            }

            // Desktop/web: Wrap in a fixed mobile-size container + message
            return Scaffold(
              backgroundColor: Colors.grey[900],
              body: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "QuickChat looks best on a mobile screen or a small window. "
                        "Please resize your browser or use a mobile device for best experience.",
                        style: TextStyle(color: Colors.white70),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 400,
                      height: 800,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            blurRadius: 16,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: child,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
