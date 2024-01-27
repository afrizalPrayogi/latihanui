import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dayfour2 extends StatelessWidget {
  const Dayfour2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1B33),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/chart_illustration.png',
                width: 375,
                height: 454,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Boost Profit',
                style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Our tools are helping business \n to grow much faster',
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const ImageButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageButton extends StatefulWidget {
  const ImageButton({super.key});

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  String displayText = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              displayText = '';
            });
            Future.delayed(Duration(seconds: 1), () {
              setState(() {
                displayText = 'You Are Boosting';
              });
            });
          },
          child: Image.asset(
            'assets/rocket_button.png',
            width: 100,
            height: 100,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          displayText,
          style: const TextStyle(fontSize: 20, color: Colors.purple),
        )
      ],
    );
  }
}
