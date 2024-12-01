import 'package:fit_sphere/core/routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    
    switch (settings.name) {
      case Routes.onBoarding: 
        return MaterialPageRoute(builder: (_) => const Center(
          child: Text("OnBoarding"),
        ));
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const Center(
          child: Text("Login"),
        ));
        case Routes.register:
        return MaterialPageRoute(builder: (_) => const Center(
          child: Text("Register"),
        ));
      case Routes.training:
        return MaterialPageRoute(builder: (_) => const Center(
          child: Text("Training"),
        ));
      default:
        return null;
    }
  }
}