
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/pages/venturepage.dart';

class Secondsplash extends StatelessWidget {
  const Secondsplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (DragEndDetails details) {
          const double swipeThreshold = 100.0;
          if (details.primaryVelocity! > swipeThreshold) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Venturepage(),
              ),
            );
          }
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/background_image.png',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(left: 1300, top: 50)),
                Image.asset(
                  'assets/home.png',
                  width: 100,
                ),
                Text(
                  'HouseQu',
                  style: GoogleFonts.montserrat(
                      fontSize: 30, fontWeight: FontWeight.w900),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
