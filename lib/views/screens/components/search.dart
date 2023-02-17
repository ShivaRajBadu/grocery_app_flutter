import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constants.dart';

class SearchInputField extends StatefulWidget {
  const SearchInputField({super.key});

  @override
  State<SearchInputField> createState() => _SearchInputFieldState();
}

class _SearchInputFieldState extends State<SearchInputField> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const TextField(
      // controller: _searchController,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 60),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          hintText: "Search...",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide(color: Color(0xffD9D0E3)))),
      style: TextStyle(
          fontSize: 17, fontWeight: FontWeight.bold, color: textSecondary),
    );
  }
}
