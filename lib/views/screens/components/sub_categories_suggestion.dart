import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/views/screens/components/sub_category_suggestion.dart';

class SubCategoriesSuggestion extends StatefulWidget {
  const SubCategoriesSuggestion({super.key});

  @override
  State<SubCategoriesSuggestion> createState() =>
      _SubCategoriesSuggestionState();
}

class _SubCategoriesSuggestionState extends State<SubCategoriesSuggestion> {
  List allSubCategory = [
    SubCategorieSuggestion(
        numberOfItem: 12, title: 'Сabbage and lettuce', isChecked: true),
    SubCategorieSuggestion(numberOfItem: 2, title: 'Сucumbers and tomatoes'),
    SubCategorieSuggestion(numberOfItem: 14, title: 'Peppers '),
    SubCategorieSuggestion(numberOfItem: 23, title: 'Oinons and garlic'),
    SubCategorieSuggestion(numberOfItem: 19, title: 'Potatoes and carrots'),
    SubCategorieSuggestion(numberOfItem: 5, title: 'other'),
    SubCategorieSuggestion(numberOfItem: 12, title: 'Сabbage and lettuce'),
    SubCategorieSuggestion(numberOfItem: 2, title: 'Сucumbers and tomatoes'),
    SubCategorieSuggestion(numberOfItem: 14, title: 'Peppers '),
    SubCategorieSuggestion(numberOfItem: 23, title: 'Oinons and garlic'),
    SubCategorieSuggestion(numberOfItem: 19, title: 'Potatoes and carrots'),
    SubCategorieSuggestion(numberOfItem: 5, title: 'other'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: allSubCategory
              .map((cat) => GestureDetector(
                  onTap: () {
                    setState(() {
                      cat.isChecked = !cat.isChecked;
                    });
                  },
                  child: SubCategorySuggestion(item: cat)))
              .toList()),
    );
  }
}
