import 'package:flutter/material.dart';

import 'package:grocery/constants.dart';
import 'package:grocery/views/screens/components/backButton.dart';
import 'package:grocery/views/screens/components/button_navigation.dart';
import 'package:grocery/views/screens/components/search.dart';
import 'package:grocery/views/screens/components/sub_categories_items.dart';
import 'package:grocery/views/screens/components/sub_categories_suggestion.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    BackIconButton(),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Vegetables',
                      style: TextStyle(
                        color: textPrimary,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.41,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SearchInputField(),
                    SizedBox(
                      height: 30,
                    ),
                    SubCategoriesSuggestion(),
                    SizedBox(
                      height: 45,
                    ),
                    SubCategoriesItems()
                  ]),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar());
  }
}
