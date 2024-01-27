import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/pages/Dayfour2.dart';


class Dayfour extends StatelessWidget {
  const Dayfour({super.key});

  @override
  Widget build(context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 210),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/empty_illustration.png',
                  height: 239,
                  width: 210,
                ),
                const SizedBox(
                  height: 64,
                ),
                Text(
                  'Success Order',
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff0E1954)),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'We will delivery your package \n as soon as possible',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  width: 120,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey, width: 0.5),
                    gradient: LinearGradient(colors: [
                      Colors.pink.shade400,
                      Colors.blueAccent,
                      Colors.greenAccent
                    ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const Dayfour2()));
                      },
                      child: Text(
                        'Done',
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
