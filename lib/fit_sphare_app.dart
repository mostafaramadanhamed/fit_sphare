import 'package:fit_sphere/core/routing/routes.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';

class FitSphareApp extends StatelessWidget {
  final AppRouter appRouter;
  const FitSphareApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitSphere',
      initialRoute:Routes.onBoarding,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
