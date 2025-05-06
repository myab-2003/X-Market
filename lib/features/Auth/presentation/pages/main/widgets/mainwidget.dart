import 'package:X_Market/features/Auth/presentation/pages/main/widgets/category.dart';
import 'package:X_Market/features/Auth/presentation/pages/main/widgets/categorymodel.dart';
import 'package:X_Market/features/Auth/presentation/pages/main/widgets/itemwidget.dart';
import 'package:X_Market/features/Auth/presentation/pages/main/widgets/searchwidget.dart';
import 'package:flutter/material.dart';

class mainwidget extends StatelessWidget {
  const mainwidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        // height: 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            Search(),
            category(name: 'Categories'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categorymodel(
                    image: 'assets/categories/cloths.png',
                    title: 'cloths',
                  ),
                  categorymodel(
                    image: 'assets/categories/gym.png',
                    title: 'Gym',
                  ),
                  categorymodel(
                    image: 'assets/categories/electronic.png',
                    title: 'Electronic',
                  ),
                  categorymodel(
                    image: 'assets/categories/shoses.png',
                    title: 'Shoes',
                  ),
                  categorymodel(
                    image: 'assets/categories/cosmetics.png',
                    title: 'Cosmetics',
                  ),
                  categorymodel(
                    image: 'assets/categories/baby.png',
                    title: 'Baby',
                  ),
                ],
              ),
            ),
            //
            category(name: 'Best Selling'),
            Itemwidget(),
          ],
        ),
      ),
    );
  }
}
