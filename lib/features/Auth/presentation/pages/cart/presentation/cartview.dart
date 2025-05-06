import 'package:X_Market/features/Auth/presentation/pages/cart/presentation/cartbody.dart';
import 'package:X_Market/features/Auth/presentation/pages/cart/widget/cart_appbar.dart';
import 'package:flutter/material.dart';


class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: cartappbar(),
      body: cartbody(),
    );
  }
}
