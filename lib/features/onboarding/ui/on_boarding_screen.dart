import 'package:fit_sphere/core/helper/font_weight_helper.dart';
import 'package:fit_sphere/core/helper/navigation_extension.dart';
import 'package:fit_sphere/core/helper/spacing_extension.dart';
import 'package:fit_sphere/core/routing/routes.dart';
import 'package:fit_sphere/core/theme/colors.dart';
import 'package:fit_sphere/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<Offset>> _animations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 7),
      vsync: this,
    );

    _animations = [
      Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0.4, 0.2))
          .animate(
              CurvedAnimation(parent: _controller, curve: Curves.bounceIn)),
      Tween<Offset>(begin: const Offset(0, -1), end: const Offset(0.34, 0.77))
          .animate(
              CurvedAnimation(parent: _controller, curve: Curves.bounceInOut)),
      Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-0.12, 0.82))
          .animate(
              CurvedAnimation(parent: _controller, curve: Curves.bounceOut)),
      Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(-0.40, -0.3))
          .animate(
              CurvedAnimation(parent: _controller, curve: Curves.bounceOut)),
      Tween<Offset>(begin: const Offset(2,-1), end: const Offset(0.9, 1.7))
          .animate(CurvedAnimation(
              parent: _controller, curve: Curves.easeInToLinear)),
    ];

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            height: 482.h,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/back.png',
                    ),
                    fit: BoxFit.fill)),
            child: Stack(
              children: List.generate(_animations.length, (index) {
                return SlideTransition(
                  position: _animations[index],
                  child: index == 0
                      ? Image.asset(
                          'assets/images/1.png',
                          height: 492.h,
                        )
                      : (index == 1
                          ? Image.asset(
                              'assets/images/2.png',
                              height: 210.h,
                            )
                          : (index == 2
                              ? Image.asset(
                                  'assets/images/3.png',
                                  height: 268.h,
                                )
                              : (index == 3
                                  ? Image.asset(
                                      'assets/images/4.png',
                                      height: 268.h,
                                    )
                                  : Text(
                                      'FIT SPHARE',
                                      style: TextStyle(
                                          fontSize: 25.sp,
                                          fontWeight: FontWeightHelper.extraBold,
                                          shadows: const [
                                            Shadow(
                                                color: ColorsManager.lightBlack,
                                                offset: Offset(0, 0),
                                                blurRadius: 10)
                                          ],
                                          color:  ColorsManager.lightGreenYellow),
                                    )))),
                );
              }),
            ),
          ),
        12.ph,
           Text(
            'Waffles are just \n pancakes with abs',
            style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          12.ph,
           Text(
              'Our recipes and workouts are the perfect way to start your day. Sweat hard, then have a snack or drink. Whatever you prefer!',
              style: TextStyle(fontSize: 16.sp, color: Colors.grey),
              textAlign: TextAlign.center),
              16.ph,
              SizedBox(
                width: 110.w,
                height: 6.h,
                child: LinearProgressIndicator(
                  backgroundColor: ColorsManager.lightBlack,
                  color:ColorsManager.lightGreenYellow,
                  value: 0.58,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              36.ph,
              AppTextButton(buttonText: 'Get Started', onPressed: (){
                context.pushNamed(Routes.home);
              },buttonWidth: 195,buttonHeight: 59,),
              
        ],
      ),
    );
  }
}
