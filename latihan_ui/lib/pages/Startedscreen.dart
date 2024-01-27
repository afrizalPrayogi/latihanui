import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/pages/Startedscreenv2.dart';

class Startedscreen extends StatelessWidget {
  const Startedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 60, right: 40),
        child: Column(
          children: [
            Text(
              'Healthy First',
              style: GoogleFonts.poppins(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Exercise together with our best \n Community fit in the world',
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 16,
            ),
            Image.asset('assets/gallery.png'),
            const SizedBox(
              height: 70,
            ),
            Container(
              width: 295,
              height: 55,
              color: const Color(0xffAFEA0D),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Startedscrreenv2()));
                },
                child: Text(
                  'Shaped My Body',
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Text(
                'Terms & Condition',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
