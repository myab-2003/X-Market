import 'package:X_Market/core/Commen/navigation_controller.dart';
import 'package:X_Market/core/constans.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


class CustomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NavigationController navController = Get.find();

    return CurvedNavigationBar(
      height: 70,
      color: KMainColor,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Colors.grey,
      animationDuration: const Duration(milliseconds: 300),
      index: navController.selectedIndex.value,
      items: const [
        Icon(Icons.person, size: 40, color: Colors.white),
        Icon(Icons.home, size: 40, color: Colors.white),
        Icon(Icons.shopping_bag, size: 40, color: Colors.white),
      ],
      onTap: (index) {
        navController.changePage(index);
      },
    );
  }
}
