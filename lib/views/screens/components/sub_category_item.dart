import 'package:flutter/material.dart';

import 'package:grocery/constants.dart';

class SubCategoryItem extends StatelessWidget {
  final SubCategoriesArray item;
  const SubCategoryItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Flex(
        crossAxisAlignment: CrossAxisAlignment.start,
        direction: Axis.horizontal,
        children: [
          Flexible(
            child: Container(
              height: 128,
              width: 177,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/${item.image}'),
                      fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 3,
              ),
              Text(
                item.title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: textPrimary),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(style: const TextStyle(), children: <TextSpan>[
                  TextSpan(
                      text: '${item.price}',
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: textPrimary)),
                  const TextSpan(
                      text: '€ / piece',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: textSecondary))
                ]),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 1, color: const Color(0xffD9D0E3))),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          !item.isLoved
                              ? Icons.favorite_border
                              : Icons.favorite,
                          color: const Color(0xffD9D0E3),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: buttonBg,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: buttonBg)),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
