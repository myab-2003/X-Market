import 'package:X_Market/core/constans.dart';
import 'package:X_Market/features/Auth/presentation/pages/profile/widget/filedetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                "Profile Information",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              CircleAvatar(
                radius: 110, // حجم الصورة
                backgroundColor: KMainColor, // حدود زرقاء
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                    'assets/profile.jpg',
                  ), // تأكد من وجود الصورة في assets
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.brown[50], // لون الخلفية
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileDetail(title: " Name:", value: "Mahmoud Ashraf "),

                    ProfileDetail(title: "Job :", value: "Software Engineer"),
                    ProfileDetail(title: "Mobile:", value: "+201023594870"),
                    ProfileDetail(title: "Country:", value: "Egypt "),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
