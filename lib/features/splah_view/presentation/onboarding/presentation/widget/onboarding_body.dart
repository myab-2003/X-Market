import 'dart:collection';
import 'package:X_Market/core/utils/size_confige.dart';
import 'package:X_Market/core/widgets/custome_buttons.dart';
import 'package:X_Market/features/Auth/presentation/pages/log_in/presentation/login_veiw.dart';
import 'package:X_Market/features/splah_view/presentation/onboarding/presentation/widget/Custom_dotindecator.dart';
import 'package:X_Market/features/splah_view/presentation/onboarding/presentation/widget/custom_pageview.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class onboardinbody extends StatefulWidget {
  const onboardinbody({super.key});

  @override
  State<onboardinbody> createState() => _onboardinbodyState();
}

class _onboardinbodyState extends State<onboardinbody> {
  PageController? pageController;

  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0)..addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pagecontroller: pageController!),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 22.5,
          child: Custom_dotindecator(
            dotIndex:
                pageController!.hasClients ? pageController!.page!.toInt() : 0,
          ),
        ),
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 40,
          child: TextButton(
            onPressed: () {
              Get.to(
                () => loginview(),
                transition: Transition.rightToLeft,
                duration: Duration(seconds: 2),
              );
            },
            child: Visibility(
              visible:
                  pageController!.hasClients
                      ? (pageController!.page == 2 ? false : true)
                      : true,
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: Custombuttons(
            OnTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              } else {
                Get.to(
                  () => loginview(),
                  transition: Transition.rightToLeft,
                  duration: Duration(seconds: 2),
                );
              }
            },
            buttonname:
                pageController!.hasClients
                    ? (pageController?.page == 2 ? 'Get started' : 'Next')
                    : 'Next',
          ),
        ),
      ],
    );
  }
}
