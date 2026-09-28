import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'providers/app_provider.dart';

// Screens
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen_wrapper.dart';
import 'screens/calendar_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/analytics_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyCampusApp());
}

class MyCampusApp extends StatelessWidget {
  const MyCampusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MaterialApp(
        title: 'MyCampus',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignUpScreen(),
          '/home': (context) => const HomeScreenWrapper(),
          '/calendar': (context) => const CalendarScreen(),
          '/quiz': (context) => const QuizScreen(),
          '/analytics': (context) => const AnalyticsScreen(),
          '/profile': (context) => const ProfileScreen(),
        },
      ),
    );
  }
}