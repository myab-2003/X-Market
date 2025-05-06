import 'package:X_Market/features/Auth/presentation/pages/cart/widget/cartitem.dart';
import 'package:X_Market/features/Auth/presentation/pages/cart/widget/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainCartWidget extends StatelessWidget {
  MainCartWidget({super.key});

  final BadgeCartController cartController = Get.find<BadgeCartController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 800, // تحديد ارتفاع مناسب
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: CartItem(),
            ),
          ),
        ),

        // زر المجموع الكلي ثابت في الأسفل
        Obx(() {
          double totalPrice = cartController.cartItems.fold(0, (sum, item) {
            String priceString = item["price"].replaceAll("\$", "");
            double price = double.tryParse(priceString) ?? 0.0;
            return sum + price;
          });

          return cartController.cartItems.isNotEmpty
              ? Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Get.snackbar(
                        "Total Price",
                        "Total: \$${totalPrice.toStringAsFixed(2)}",
                      );
                    },
                    child: Text(
                      "Total: \$${totalPrice.toStringAsFixed(2)}",
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              : const SizedBox.shrink(); // لا يعرض شيئًا إذا كان السلة فارغة
        }),
      ],
    );
  }
}
