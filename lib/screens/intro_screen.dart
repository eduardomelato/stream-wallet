import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'dart:ui' as ui;

import 'package:stream/constants.dart';

import 'auth/login_screen.dart';

class Intro extends StatefulWidget {
  const Intro({Key key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                "assets/component1.png",
                fit: BoxFit.cover,
              )),
              Center(
                child: Image.asset(
                  "assets/applogoname.png",
                  height: size.height * 0.1885,
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 26.0),
                    child: Container(
                      width: size.width * 0.915,
                      height: size.height * 0.073,
                      child: MaterialButton(
                        child: Text(
                          "Continue",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  LoginPage(),
                            ),
                          );
                        },
                        color: kPrimaryBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ));
  }
}
