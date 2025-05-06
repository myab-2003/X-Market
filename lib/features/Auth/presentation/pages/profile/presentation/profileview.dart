import 'package:X_Market/features/Auth/presentation/pages/profile/widget/profilebody.dart';
import 'package:flutter/material.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProfileBody(),
    );
  }
}
