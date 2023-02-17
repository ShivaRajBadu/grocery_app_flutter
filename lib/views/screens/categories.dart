import 'package:flutter/material.dart';

import 'package:grocery/constants.dart';
import 'package:grocery/views/screens/components/button_navigation.dart';
import 'package:grocery/views/screens/components/categoriesItems.dart';
import 'package:grocery/views/screens/components/search.dart';

import 'components/backButton.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BackIconButton(),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Categories',
                  style: TextStyle(
                    color: textPrimary,
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.41,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const SearchInputField(),
                Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    child: const CategoriesItems())
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
