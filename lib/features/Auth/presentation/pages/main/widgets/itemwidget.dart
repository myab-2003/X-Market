import 'package:X_Market/core/widgets/space_widget.dart'
    show horizontalSpace, virtecalspace;
import 'package:X_Market/features/Auth/presentation/pages/cart/presentation/cartview.dart';
import 'package:X_Market/features/Auth/presentation/pages/cart/widget/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Itemwidget extends StatelessWidget {
  final BadgeCartController cartController = Get.put(BadgeCartController());
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i <= 8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(1.5),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Color(0xff4c53a5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '-50%',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    Icon(Icons.favorite_border, color: Colors.red),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/products/$i.jpg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 6),
                  alignment: Alignment.center,
                  child: Text(
                    'Product $i',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4c53a5),
                    ),
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$1000',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    horizontalSpace(value: 4),
                    IconButton(
                      onPressed: () {
                        final cartController = Get.find<
                            BadgeCartController>(); // ✅ احصل على الكونترولر
                        cartController.addToCart({
                          "title": "Product $i",
                          "price": " 1000",
                          "image": "assets/products/$i.jpg",
                        });

                        Get.snackbar("Success", "Added to cart!");
                      },
                      icon: Icon(Icons.shopping_bag),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
    floatingActionButton:
    FloatingActionButton(
      onPressed: () {
        Get.to(() => CartView()); // الانتقال إلى صفحة السلة
      },
      child: Icon(Icons.shopping_cart),
      backgroundColor: Colors.blue,
    );
  }
}
