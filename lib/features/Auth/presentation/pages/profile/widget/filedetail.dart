import 'package:flutter/widgets.dart';

class ProfileDetail extends StatelessWidget {
  final String title;
  final String value;

  const ProfileDetail({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        "$title $value",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
