import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Daysix extends StatefulWidget {
  const Daysix({super.key});

  @override
  State<Daysix> createState() => _DaysixState();
}

class _DaysixState extends State<Daysix> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 100, left: 32, right: 32),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/crown.png',
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Which One You Wish \n to Upgrade',
              style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget option(
      int index,
      String imageUrl,
      String title,
      String description,
      String subDescription,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 315,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(
              color: selectedIndex == index ? Colors.purple : Colors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 7),
                child: Image.asset(
                  imageUrl,
                  height: 66,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          description,
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          subDescription,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 24),
                child: selectedIndex == index
                    ? Image.asset(
                        'assets/purple_check.png',
                        width: 26,
                      )
                    : const SizedBox(
                        width: 26,
                      ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          header(),
          const SizedBox(
            height: 50,
          ),
          option(0, 'assets/pig_icon.png', 'Money Security', 'Support', '24/7'),
          const SizedBox(
            height: 16,
          ),
          option(1, 'assets/paper_illustration.png', 'Automation', 'we provide',
              'invoice'),
          const SizedBox(
            height: 16,
          ),
          option(
              2, 'assets/coin_icon.png', 'Balance Report', 'Coin up to', '10k')
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 19, left: 30),
              child: Text(
                'Upgrade Now',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 19, left: 32),
              child: Image.asset(
                'assets/right_arrow.png',
                width: 36,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
