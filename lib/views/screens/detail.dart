import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/views/screens/components/button_navigation.dart';
import 'package:grocery/views/screens/components/carousel.dart';
import 'package:grocery/views/screens/components/carousel_loading.dart';

class Details extends StatefulWidget {
  Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  void initState() {
    super.initState();
    scheduleTimeout(3 * 1000); //5 seconds
  }

  bool isLoading = true;

  Timer scheduleTimeout([int milliseconds = 10000]) =>
      Timer(Duration(milliseconds: milliseconds), handleTimeout);

  void handleTimeout() {
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              isLoading ? const CarouselLoading() : const Carousel(),
              Container(
                padding: const EdgeInsets.only(top: 40, left: 20),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xffF6F5F5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Boston Lettuce',
                        style: TextStyle(
                            color: textPrimary,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              text: '',
                              style: TextStyle(letterSpacing: .5),
                              children: <TextSpan>[
                                TextSpan(
                                    text: '1.10',
                                    style: TextStyle(
                                        color: textPrimary,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: '€ / piece',
                                    style: TextStyle(
                                      color: textSecondary,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ])),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '~ 150 gr / piece',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: buttonBg),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Spain',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: textSecondary),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 78,
                            height: 56,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(Icons.favorite_border),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 235,
                            height: 56,
                            decoration: const BoxDecoration(
                                color: buttonBg,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: TextButton.icon(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
