import 'package:X_Market/features/Auth/presentation/pages/cart/widget/maincartwidget.dart';
import 'package:flutter/material.dart';

class cartbody extends StatelessWidget {
  const cartbody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [MainCartWidget()]);
  }
}
