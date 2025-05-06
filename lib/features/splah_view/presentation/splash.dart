import 'package:X_Market/core/constans.dart';
import 'package:X_Market/features/splah_view/presentation/widget/splash_body.dart';
import 'package:flutter/material.dart';

class splashview extends StatelessWidget {
  const splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      body: splashbody(),
    );
  }
}