import 'package:flutter/material.dart';
import 'package:grocery/views/screens/categories.dart';

import 'package:grocery/views/screens/detail.dart';
import 'package:grocery/views/screens/start_screen.dart';
import 'package:grocery/views/screens/sub_category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery For Kitchen',
      routes: {
        '/': (context) => const StartScreen(),
        '/categories': (context) => const Categories(),
        '/sub-category': (context) => SubCategory(),
        '/detail/': (context) => Details()
      },
    );
  }
}
