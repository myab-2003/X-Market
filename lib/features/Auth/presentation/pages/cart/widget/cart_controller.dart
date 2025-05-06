import 'package:get/get.dart';

class BadgeCartController extends GetxController {
  var cartCount = 0.obs;
  var cartItems = <Map<String, dynamic>>[].obs; 

  void addToCart(Map<String, dynamic> product) {
    cartItems.add(product); 
    cartCount.value = cartItems.length; 
  }

  void removeFromCart(int index) {
    if (cartItems.isNotEmpty) {
      cartItems.removeAt(index); 
      cartCount.value = cartItems.length; 
    }
  }
}
