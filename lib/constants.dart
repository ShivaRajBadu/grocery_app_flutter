import 'package:flutter/material.dart';

const Color starting_bg_color = Color(0xffA259FF);
const Color buttonBg = Color(0xff0BCE83);
const Color whiteColor = Color(0x00ffffff);
const Color textPrimary = Color(0xff2D0C57);
const Color textSecondary = Color(0xff9586A8);

class CategoriesArray {
  String title;
  int numberOfItem;
  String image;
  CategoriesArray(
      {required this.title, required this.numberOfItem, required this.image});
}

class SubCategorieSuggestion {
  late bool isChecked;
  String title;
  int numberOfItem;
  SubCategorieSuggestion(
      {required this.title,
      required this.numberOfItem,
      this.isChecked = false});
}

class SubCategoriesArray {
  String title;
  double price;
  bool isLoved;
  bool isAddedToCart;
  String image;
  SubCategoriesArray(
      {required this.title,
      required this.price,
      this.isAddedToCart = false,
      this.isLoved = false,
      required this.image});
}
