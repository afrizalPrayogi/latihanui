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
        padding: const EdgeInsets.only(top: 90),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/office_illustration.png',
                width: 290,
                height: 200,
              ),
              const SizedBox(
                height: 32,
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
                height: 52,
              ),
              Image.asset(
                'assets/stars.png',
                width: 290,
                height: 50,
              ),
              const SizedBox(
                height: 32,
              ),
              LayoutBuilder(
                builder: (context, Constraints) {
                  double width = Constraints.maxWidth;
                  return Container(
                    width: width * 0.8,
                    height: 130,
                    decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Your Massage',
                            hintStyle: messageTextStyle),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 62,
              ),
              Container(
                height: 42,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueAccent),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: buttonTextStyle,
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
