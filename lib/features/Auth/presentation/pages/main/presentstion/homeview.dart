import 'package:X_Market/core/constans.dart';
import 'package:X_Market/features/Auth/presentation/pages/cart/widget/cart_controller.dart';
import 'package:X_Market/features/Auth/presentation/pages/main/presentstion/homebody.dart';
import 'package:X_Market/features/Auth/presentation/pages/main/widgets/home_Appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BadgeCartController());

    return Scaffold(
      backgroundColor: KbackColor,
      appBar: CustomAppBar(),
      body: HomeBody(),
    );
  }
}
