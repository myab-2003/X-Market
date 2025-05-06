import 'package:X_Market/core/constans.dart';
import 'package:X_Market/core/widgets/custom_textfeild.dart';
import 'package:X_Market/core/widgets/custome_buttons.dart';
import 'package:X_Market/core/widgets/space_widget.dart';
import 'package:X_Market/features/Auth/presentation/pages/log_in/services/Signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:keyboard_avoider/keyboard_avoider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _authService = AuthService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool isLoading = false;
  void initState() {
    super.initState();
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
     
  }

  Future<void> signUp() async {
    setState(() => isLoading = true);
    await _authService.signIn(
      email: emailController.text,
      password: passwordController.text,
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                virtecalspace(value: 3),
                Image.asset('assets/images/login.jpg', width: 250, height: 250),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 50,
                    color: KMainColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico Regular',
                  ),
                ),
                virtecalspace(value: 5),
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
                virtecalspace(value: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Custombuttons(
                    buttonname: 'Login',
                    OnTap: () async {
                      await signUp();
                      },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
