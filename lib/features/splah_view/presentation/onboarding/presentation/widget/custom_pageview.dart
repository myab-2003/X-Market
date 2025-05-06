import 'package:X_Market/features/splah_view/presentation/onboarding/presentation/widget/page_viewitem.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key, required this.pagecontroller});
  final PageController pagecontroller;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pagecontroller,
      children: [
        PageViewitem(
          title: 'E Shopinng App',
          description: 'Explore top products',
          image: 'assets/images/onboarding_a.png',
        ),
        PageViewitem(
          title: 'Delivery on the way ',
          description: 'Get your order by speed delivery',
          image: 'assets/images/onboarding_b.png',
        ),
        PageViewitem(
          title: 'Delivery Arrrived',
          description: 'Order Arrived at your location ',
          image: 'assets/images/onboarding_c.png',
        ),
      ],
    );
  }
}
