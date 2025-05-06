import 'package:X_Market/features/Auth/presentation/pages/log_in/presentation/login_viewbody.dart';
import 'package:flutter/material.dart';

class loginview extends StatelessWidget {
  const loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: loginviewbody(),
    );
  }
}
