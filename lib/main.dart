import 'package:X_Market/core/Commen/navigation_controller.dart';
import 'package:X_Market/features/splah_view/presentation/splash.dart';
import 'package:X_Market/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  Get.put(NavigationController()); // تسجيل الـ Controller في GetX

  runApp(const onlinestore());
}

class onlinestore extends StatelessWidget {
  const onlinestore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splashview (), // يبدأ بصفحة الـ Splash
    );
  }
}
