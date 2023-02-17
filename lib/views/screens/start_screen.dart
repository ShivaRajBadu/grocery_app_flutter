import 'package:flutter/material.dart';
import 'package:grocery/constants.dart';
import 'package:grocery/views/screens/categories.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: starting_bg_color,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: buttonBg,
                  borderRadius: BorderRadius.circular(99999),
                  border: Border.all(width: 1, color: buttonBg)),
              child: const Text(
                'D',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xffF6F5F5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Image(
                        image: AssetImage('assets/images/first_icon.png')),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Non-Contact \n Deliveries',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: textPrimary,
                        letterSpacing: 0.41),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    child: Text(
                      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 56,
                    child: TextButton(
                      onPressed: () {
                        print('object');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Categories()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(buttonBg),
                          alignment: Alignment.center),
                      child: Text(
                        'Order Now'.toUpperCase(),
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0.6),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Dismiss'.toUpperCase(),
                      style: const TextStyle(
                          color: textSecondary,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
