import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/pages/Startedscreen.dart';

class Startedscrreenv2 extends StatelessWidget {
  const Startedscrreenv2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background_started.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Maximize Revenue',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                      'gain more profit from crypto currency \n without any risk invoice',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Startedscreen()));
                    },
                    child: Image.asset(
                      'assets/purple_button.png',
                      width: 70,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
