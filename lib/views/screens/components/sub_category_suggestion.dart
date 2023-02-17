import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';

class SubCategorySuggestion extends StatelessWidget {
  final SubCategorieSuggestion item;
  const SubCategorySuggestion({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: item.isChecked ? const Color(0xffE2CBFF) : Colors.white,
      ),
      child: Row(
        children: [
          if (item.isChecked)
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.check,
                size: 15,
                color: Color(0xff6C0EE4),
              ),
            ),
          Text(
            item.title,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:
                    item.isChecked ? const Color(0xff6C0EE4) : textSecondary),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            '(${item.numberOfItem})',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color:
                    item.isChecked ? const Color(0xff6C0EE4) : textSecondary),
          )
        ],
      ),
    );
  }
}
