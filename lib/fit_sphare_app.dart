import 'package:fit_sphere/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

class FitSphareApp extends StatelessWidget {
  final AppRouter appRouter;
  const FitSphareApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
       designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FitSphere',
        initialRoute:Routes.onBoarding,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
