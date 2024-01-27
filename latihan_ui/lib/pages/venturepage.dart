import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Venturepage extends StatelessWidget {
  const Venturepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const  Color(0xff13131E),
        body: Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/sword_icon.png',
                  height: 120,
                  width: 120,
                ),
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'VENTURE',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color:const Color(0xffFFFFFF)),
                )
              ],
            ),
          ),
        ));
  }
}
