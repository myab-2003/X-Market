import 'package:X_Market/core/constans.dart';
import 'package:X_Market/core/widgets/custom_textfeild.dart';
import 'package:X_Market/core/widgets/custome_buttons.dart';
import 'package:X_Market/core/widgets/space_widget.dart';
import 'package:X_Market/features/Auth/presentation/pages/log_in/services/Signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';

class regesterpage extends StatefulWidget {
  const regesterpage({super.key});

  @override
  State<regesterpage> createState() => _regesterpageState();
}

class _regesterpageState extends State<regesterpage> {
  final FirebaseAuthService _authService = FirebaseAuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isLoading = false;
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> signUp() async {
    setState(() => isLoading = true);
    await _authService.signUp(
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
      context: context,
    );
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardAvoider(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              virtecalspace(value: 10),
              Image.asset('assets/images/reg.jpg', width: 200, height: 200),
              virtecalspace(value: 1),
              Text(
                'Add Your Information',
                style: TextStyle(
                  fontSize: 25,
                  color: KMainColor,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              virtecalspace(value: 2),
              
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Textfeild(
                  label: 'Email',
                  hint: 'Enter your Email',
                  controller: emailController,
                ),
              ),
              virtecalspace(value: 2.5),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: confirmPassword(
                  passlabel: 'Password',
                  passhint: 'Enter Password',
                  controller: passwordController,
                ),
              ),
              virtecalspace(value: 2.5),
              // CustomText(text: 'Confirm Password'),
              // virtecalspace(value: 1),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: confirmPassword(
                  passlabel: ' Confirm Password',
                  passhint: 'Re Enter your  Password',
                  controller: confirmPasswordController,
                ),
              ),
              virtecalspace(value: 5),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Custombuttons(
                  buttonname: 'Create Account',
                  OnTap: () async{
                    await signUp();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
