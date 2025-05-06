import 'package:X_Market/core/constans.dart';
import 'package:X_Market/core/widgets/custome_buttons.dart';
import 'package:X_Market/core/widgets/space_widget.dart';
import 'package:X_Market/features/Auth/presentation/pages/log_in/complete_info/login_page.dart';
import 'package:X_Market/features/Auth/presentation/pages/log_in/complete_info/regestration_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class loginviewbody extends StatelessWidget {
  loginviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          virtecalspace(value: 10),
          Image.asset(KLoge, width: 300, height: 200),
          virtecalspace(value: 2),
          Text(
            'X Market',
            style: TextStyle(
              fontSize: 50,
              color: KMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          virtecalspace(value: 5),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Custombuttons(
              buttonname: 'Login',
              OnTap: () {
                Get.to(
                  () => LoginPage(),
                  transition: Transition.rightToLeft,
                  duration: Duration(seconds: 2),
                );
              },
            ),
          ),
          virtecalspace(value: 2),
          Text(
            'Login with social media',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          virtecalspace(value: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: socialbutton(
                  name: 'Google',
                  OnTap: () {},
                  image: 'assets/images/google.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: socialbutton(
                  name: 'Facebook',
                  OnTap: () {},
                  image: 'assets/images/facebook.png',
                ),
              ),
            ],
          ),
          virtecalspace(value: 2.5),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Divider(color: Colors.grey, thickness: 2),
          ),
          Text(
            'Do not have an account?',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          virtecalspace(value: 2),
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Custombuttons(
              buttonname: 'Create an account',
              OnTap: () {
                Get.to(
                  () => regesterpage(),
                  transition: Transition.rightToLeft,
                  duration: Duration(seconds: 2),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
