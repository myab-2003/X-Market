import 'package:X_Market/core/utils/size_confige.dart';
import 'package:X_Market/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';


class PageViewitem extends StatelessWidget {
  PageViewitem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          virtecalspace(value: 22),
          SizedBox(
            height: SizeConfig.defaultSize! * 20,
            child: Image.asset(image),
          ),
          virtecalspace(value: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          virtecalspace(value: 2.5),
          Text(
            description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
