import 'package:fit_sphere/fit_sphare_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

void main()async {
   WidgetsFlutterBinding.ensureInitialized();
  
  await ScreenUtil.ensureScreenSize();
  runApp(FitSphareApp(
    appRouter: AppRouter(),
  ));
}

