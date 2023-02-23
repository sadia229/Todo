import 'package:flutter/material.dart';
import 'package:git_test_app/apps/auth/register/register_screen.dart';
import 'package:git_test_app/apps/home/home_screen.dart';
import 'package:git_test_app/apps/main_screen.dart';
import 'package:git_test_app/apps/splash/splash_screen.dart';
import 'package:git_test_app/apps/todo/todo_screen.dart';

import '../../apps/auth/login/login_screen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final Map? arguments = settings.arguments as Map?;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case '/main':
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
        );
      case '/register':
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case '/todo':
        return MaterialPageRoute(
          builder: (_) => const TodoScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        );
      },
    );
  }
}
