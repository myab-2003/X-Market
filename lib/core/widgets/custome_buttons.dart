import 'package:X_Market/core/constans.dart';
import 'package:X_Market/core/utils/size_confige.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Custombuttons extends StatelessWidget {
  Custombuttons({super.key, required this.buttonname, required this.OnTap});
  final String buttonname;
  final VoidCallback OnTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: TextButton(
          onPressed: OnTap,
          child: Text(
            buttonname,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class socialbutton extends StatelessWidget {
  socialbutton({
    super.key,
    required this.name,
    required this.OnTap,
    required this.image,
  });
  final String name;
  final VoidCallback OnTap;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: KMainColor),
          ),
          child: Center(
            child: TextButton(
              onPressed: OnTap,
              child: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  name,
                  style: TextStyle(
                    color: KMainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Image.asset(image, width: 50, height: 50),
        ),
      ],
    );
  }
}
