import 'package:X_Market/features/Auth/presentation/pages/cart/presentation/cartview.dart';
import 'package:X_Market/features/Auth/presentation/pages/cart/widget/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final BadgeCartController cartController = Get.find(); // ✅ احصل على الكونترولر

  @override
  Size get preferredSize => Size.fromHeight(140);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.brown.shade300,
      padding: EdgeInsets.only(top: 40, left: 20),
      child: Row(
        children: [
          Icon(Icons.sort, size: 30, color: Colors.black),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'X Market',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Obx(
              () => badges.Badge(
                badgeStyle: badges.BadgeStyle(badgeColor: Colors.red.shade200),
                badgeContent: Text(
                  '${cartController.cartItems.length}', // ✅ العدد الفعلي للمنتجات
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => CartView(),
                      transition: Transition.rightToLeft,
                      duration: Duration(seconds: 1),
                    );
                  },
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
