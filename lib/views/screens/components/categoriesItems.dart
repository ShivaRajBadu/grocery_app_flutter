import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/views/screens/components/categoryItem.dart';
import 'package:grocery/views/screens/sub_category.dart';

class CategoriesItems extends StatefulWidget {
  const CategoriesItems({super.key});

  @override
  State<CategoriesItems> createState() => _CategoriesItemsState();
}

class _CategoriesItemsState extends State<CategoriesItems> {
  List<CategoriesArray> allCategories = [
    CategoriesArray(
        title: 'Vegetables', numberOfItem: 43, image: 'vegetables.png'),
    CategoriesArray(title: 'Fruits', numberOfItem: 32, image: 'fruit.png'),
    CategoriesArray(title: 'Bread', numberOfItem: 22, image: 'bread.png'),
    CategoriesArray(title: 'Sweets', numberOfItem: 53, image: 'sweets.png'),
    CategoriesArray(title: 'Silk', numberOfItem: 12, image: 'silk.png'),
    CategoriesArray(title: 'Coffee', numberOfItem: 43, image: 'coffee.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: allCategories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          mainAxisExtent: 211,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SubCategory()));
            },
            child: CategoryItem(
              itemObject: allCategories[index],
            ),
          );
        });
  }
}
