import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/pages/Dayfive.dart';
import 'package:latihan_ui/pages/Dayfour.dart';
import 'package:latihan_ui/pages/Daysix.dart';
import 'package:latihan_ui/pages/Secondsplash.dart';
import 'package:latihan_ui/pages/Startedscreen.dart';
import 'package:latihan_ui/pages/Signinscreen.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ScrollingBackground());
  }
}

class ScrollingBackground extends StatefulWidget {
  const ScrollingBackground({super.key});

  @override
  State<ScrollingBackground> createState() => _ScrollingBackgroundState();
}

class _ScrollingBackgroundState extends State<ScrollingBackground> {
  final ScrollController _scrollController = ScrollController();
  Color _backgroundColor = Colors.white;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    double percentage = _scrollController.offset /
        (_scrollController.position.maxScrollExtent -
            _scrollController.position.minScrollExtent);
    _backgroundColor =
        Color.lerp(Colors.greenAccent, Colors.blueAccent, percentage)!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    "Hello",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Text(
                'welcome back',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day 1 \nSplash Screen',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff191919),
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Secondsplash()),
                            );
                          },
                          child: Image.asset(
                            'assets/splash.png',
                            width: 100,
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day 2 \nGet Started screen',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff191919), fontSize: 22),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Startedscreen()),
                            );
                          },
                          child: Image.asset(
                            'assets/gallery.png',
                            width: 100,
                            height: 300,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day 3 \nSign Screen',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff191919),
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signinscreen()),
                            );
                          },
                          child: Image.asset(
                            'assets/signscreen.png',
                            width: 100,
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day 4 \nEmpty State',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff191919),
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  Dayfour()),
                            );
                          },
                          child: Image.asset(
                            'assets/empty_state.png',
                            width: 100,
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day 5 \nRating Screen',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff191919),
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Dayfive()),
                            );
                          },
                          child: Image.asset(
                            'assets/rating.png',
                            width: 100,
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day 6 \nPricing Screen',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff191919),
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>const Daysix ()),
                            );
                          },
                          child: Image.asset(
                            'assets/pricing.png',
                            width: 100,
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day 7 \nRadom Screen',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff191919),
                            fontSize: 22,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Secondsplash()),
                            );
                          },
                          child: Image.asset(
                            'assets/cart_page.png',
                            width: 100,
                            height: 300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
