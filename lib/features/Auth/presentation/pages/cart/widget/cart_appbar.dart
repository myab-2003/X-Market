import 'package:X_Market/core/constans.dart';
import 'package:flutter/material.dart';


class cartappbar extends StatelessWidget implements PreferredSizeWidget{
  cartappbar({super.key});
 Size get preferredSize => Size.fromHeight(140);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: KMainColor,
      padding: EdgeInsets.only(top: 40, left: 20),
      child: Row(
        children: [
          Icon(Icons.arrow_back, size: 30, color: Colors.black),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert, size: 30, color: Colors.black),
        ],
      ),
    );
  }
}
