import 'package:X_Market/features/Auth/presentation/pages/cart/presentation/cartview.dart';
import 'package:X_Market/features/Auth/presentation/pages/main/presentstion/homeview.dart';
import 'package:X_Market/features/Auth/presentation/pages/profile/presentation/profileview.dart';
import 'package:get/get.dart';


class NavigationController extends GetxController {
  var selectedIndex = 1.obs; 

  final pages = [
    const ProfileView(),
    const Homepage(),
    const CartView(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
