import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/widget/theme.dart';

class Dayseven extends StatelessWidget {
  const Dayseven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('assets/cover_random.png'),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Arrina La',
            style: GoogleFonts.poppins(fontSize: 26, color: Colors.black),
          ),
          Text(
            'Bali, Dekat Bandung',
            style: GoogleFonts.poppins(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 58,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
              children: [
                Text(
                  'About',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Column(
              children: [
                Text(
                  'Pantai pandawa adalah salah satu \nkawasan wisata di area Kuta selatan sana \nKabupaten dekat Bandung',
                  style: subTextStyle,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      Text(
                        'Booking Now',
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/date_one.png',
                        height: 100,
                        width: 80,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/date_two.png',
                        height: 100,
                        width: 80,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/date_three.png',
                        height: 100,
                        width: 80,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/date_four.png',
                        height: 100,
                        width: 80,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/date_three.png',
                        height: 100,
                        width: 80,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$22.000',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Night',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(right: 12, top: 12),
                child: Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade300),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              label: '')
        ],
      ),
    );
  }
}
