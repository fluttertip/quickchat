import 'package:go_router/go_router.dart';
import '../screens/splash_screen.dart';
import '../screens/auth_screen.dart';
import '../screens/home_screen.dart';
import '../screens/chat_screen.dart';
import '../screens/profile_screen.dart';

class AppRouter {
  static final router = GoRouter(
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
