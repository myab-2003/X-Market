import 'package:X_Market/core/utils/size_confige.dart';
import 'package:X_Market/features/splah_view/presentation/onboarding/presentation/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadinganimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    fadinganimation = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(animationController!);

    animationController!.repeat(reverse: true);
    goTonextview();
  }

  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: fadinganimation!,
                child: Text(
                  'X Market',
                  style: TextStyle(
                    fontSize: 80,
                    color: Color(0xffF4FFEB),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Positioned(
              //   // top: 50,
              //   child: Image.asset(
              //     'assets/images/splash_view_image.png',
              //     width: 420,
              //     height: 450,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

void goTonextview() {
  Future.delayed(Duration(seconds: 2), () {
    Get.to(
      () => onboardingview(),
      transition: Transition.rightToLeft,
      duration: Duration(seconds: 2),
    );
  });
}
