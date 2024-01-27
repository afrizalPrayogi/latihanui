import 'package:flutter/material.dart';
import 'package:latihan_ui/widget/theme.dart';
import 'package:latihan_ui/pages/Dayfive2.dart';

class Dayfive extends StatelessWidget {
  const Dayfive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100.0,
          left: 25,
          right: 25,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/pizza.png',
                width: 200,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pizza Ballado',
              style: foodTextStyle,
            ),
            Text(
              '\$90,00',
              style: pricingTextStyle,
            ),
            SizedBox(height: 90),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Was it delicious',
                  style: questionTextStyle,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/emoji_one.png',
                      width: 60,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/emoji_two.png',
                      width: 60,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/emoji_three.png',
                      width: 60,
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      'assets/emoji_four.png',
                      width: 60,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 90),
            Container(
              width: 211,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xff34D186),
                borderRadius: BorderRadius.circular(60),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dayfive2(),
                      ));
                },
                child: Text(
                  'Rate Now',
                  style: rateTextStyle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
