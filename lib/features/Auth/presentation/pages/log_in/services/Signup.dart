
import 'package:X_Market/features/Auth/presentation/pages/log_in/complete_info/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp({
    required String email,
    required String password,
    required String confirmPassword,
    required BuildContext context,
  
  }) async {
        if (email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("All fields are required!")),
      );
      return;
    }
    if (password != password) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Passwords do not match!"),
          backgroundColor: Colors.red));
    }
    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Passwords do not match!"), backgroundColor: Colors.red),
      );
      return;
    }

    try {
      await _auth.createUserWithEmailAndPassword(email: email.trim(), password: password.trim());

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text( "Successfully!"), backgroundColor: Colors.green),
      );
        Get.to(
           () => LoginPage(),
            transition: Transition.rightToLeft,
            duration: Duration(seconds: 2),
         );

    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}"), backgroundColor: Colors.red),
      );
    }
  }
}
