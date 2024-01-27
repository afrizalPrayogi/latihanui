import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/widget/theme.dart';

class Dayfive2 extends StatelessWidget {
  const Dayfive2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/office_illustration.png',
                width: 290,
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Enjoy Your Meal',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Please rate our experience',
                style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/stars.png',
                width: 290,
                height: 50,
              ),
              const SizedBox(
                height: 42,
              ),
              Container(
                width: 319,
                height: 130,
                decoration: BoxDecoration(
                    color:const Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Your Massage', hintStyle: messageTextStyle),
                    style: messageTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
