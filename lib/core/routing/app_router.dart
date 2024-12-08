import 'package:fit_sphere/core/routing/routes.dart';
import 'package:fit_sphere/features/home/ui/home_screen.dart';
import 'package:fit_sphere/features/onboarding/ui/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    
    switch (settings.name) {
      case Routes.onBoarding: 
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const Center(
          child: Text("Login"),
        ));
        case Routes.register:
        return MaterialPageRoute(builder: (_) => const Center(
          child: Text("Register"),
        ));
        case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.training:
        return MaterialPageRoute(builder: (_) => const Center(
          child: Text("Training"),
        ));
      default:
        return null;
    }
  }
}