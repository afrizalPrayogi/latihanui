import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/widget/theme.dart';

class Daysix2 extends StatefulWidget {
  const Daysix2({super.key});

  @override
  State<Daysix2> createState() => _Daysix2State();
}

int selectedIndex = -1;

class _Daysix2State extends State<Daysix2> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 62),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/pricing_illustration.png',
                width: 164,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Pro Features',
                style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                'Unlock the winner modules \n and getmore insights',
                style: subTextStyle,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String description,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Container(
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: selectedIndex == index
                    ? Colors.white
                    : const Color(0xff2F155A),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      description,
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff2F155A),
            Color(0xff602880),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 62),
          child: Center(
            child: Column(
              children: [
                header(),
                const SizedBox(
                  height: 70,
                ),
                option(0, 'assets/orange_check.png', 'unlock our top charts'),
                const SizedBox(
                  height: 20,
                ),
                option(1, 'assets/orange_check.png', '24/7 customer support'),
                const SizedBox(
                  height: 20,
                ),
                option(
                    2, 'assets/orange_check.png', 'Save more than 1,000 docs'),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 319,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE57C73)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Subscribe Now',
                            style: buttonTextStyle,
                          ),
                        ),
                        Image.asset(
                          'assets/button_arrow.png',
                          width: 41,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('Contact Support',
                        style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
