import 'package:X_Market/core/utils/size_confige.dart';
import 'package:flutter/material.dart';


class horizontalSpace extends StatelessWidget {
  horizontalSpace({super.key , required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: SizeConfig.defaultSize! * value);
  }
}
class virtecalspace extends StatelessWidget {
  virtecalspace ({super.key , required this.value});
  final double value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: SizeConfig.defaultSize! * value);
  }
}
