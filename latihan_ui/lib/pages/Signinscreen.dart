import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan_ui/pages/Signinscreen2.dart';


class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<Signinscreen> {
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 40, right: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/coin_icon.png',
                width: 90,
              ),
              const SizedBox(
                height: 90,
              ),
              Text(
                'Welcome Back \n Lets make money',
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 60,
              ),
              TextFormField(
                style: GoogleFonts.poppins(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    fillColor: Color(0xff262A34),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(color: Colors.grey)),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  fillColor: Color(0xff262A34),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  hintText: 'password',
                  hintStyle: GoogleFonts.poppins(color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (contex) =>const Signinscreen2()));
                },
                child: Text('Forgot My Password',
                    style: GoogleFonts.openSans(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                        color: Colors.white)),
              ),
              const SizedBox(
                height: 90,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.amber),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 65),
                child: Row(
                  children: [
                    Text(
                      'Dont Have Account ?',
                      style: GoogleFonts.poppins(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                        fontSize: 14,
                        color: Color(0xfFFFFFFF),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
