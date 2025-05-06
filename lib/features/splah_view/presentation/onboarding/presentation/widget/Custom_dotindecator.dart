import 'package:X_Market/core/constans.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class Custom_dotindecator extends StatelessWidget {
  Custom_dotindecator({super.key, required this.dotIndex});
  final int ? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.white,
        activeColor: KMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: KMainColor),
        ),
      ),
      dotsCount: 3,
      position: dotIndex!.toDouble(), 
    );
  }
}
