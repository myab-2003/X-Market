import 'package:X_Market/core/Commen/customnav.dart';
import 'package:X_Market/core/Commen/navigation_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navController = Get.find();

    return Obx(
      () => Scaffold(
        body: navController.pages[navController.selectedIndex.value],
        bottomNavigationBar: CustomNav(),
      ),
    );
  }
}
