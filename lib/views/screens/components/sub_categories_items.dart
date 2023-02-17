import 'package:flutter/material.dart';

import 'package:grocery/constants.dart';
import 'package:grocery/views/screens/components/sub_category_item.dart';
import 'package:grocery/views/screens/detail.dart';

class SubCategoriesItems extends StatefulWidget {
  const SubCategoriesItems({super.key});

  @override
  State<SubCategoriesItems> createState() => _SubCategoriesItemsState();
}

class _SubCategoriesItemsState extends State<SubCategoriesItems> {
  List allItems = [
    SubCategoriesArray(
        price: 1.1, title: 'Boston Lettuce', image: 'boston_lettuce.png'),
    SubCategoriesArray(
        price: 1.8, title: 'Purple Cauliflower', image: 'purple_cauli.png'),
    SubCategoriesArray(
        price: 2.1, title: 'Savoy Cabbage', image: 'cabbage.png'),
    SubCategoriesArray(
        price: 5.1, title: ' Lettuce', image: 'boston_lettuce.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: allItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
            child: SubCategoryItem(
              item: allItems[index],
            ),
          );
        });
  }
}
