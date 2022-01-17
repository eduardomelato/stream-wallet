// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream/constants.dart';
import 'package:stream/screens/home/home_screen.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key key}) : super(key: key);

  @override
  _PinPageState createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  String expression = "";
  void _callbackAdd(String val) {
    setState(() {
      expression += val;
    });
    if (expression.length == 6) {
      print(expression);
      Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => HomePage(),
      ));
    }
  }

  void _callbackRemove() {
    setState(() {
      expression = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryBlue,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/applogo_inapp.png",
          width: size.width * 0.312,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        color: kPrimaryBlue,
        child: Column(
          children: [
            Spacer(),
            Text(
              "Enter your PIN",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(
                  flex: 2,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(expression.isEmpty ? '○' : '●',
                        style: GoogleFonts.montserrat(
                            fontSize: 32, color: Colors.grey[400]))),
                Spacer(
                  flex: 1,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(expression.length < 2 ? "○" : '●',
                        style: GoogleFonts.montserrat(
                            fontSize: 32, color: Colors.grey[400]))),
                Spacer(
                  flex: 1,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(expression.length < 3 ? "○" : '●',
                        style: GoogleFonts.montserrat(
                            fontSize: 32, color: Colors.grey[400]))),
                Spacer(
                  flex: 1,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(expression.length < 4 ? "○" : '●',
                        style: GoogleFonts.montserrat(
                            fontSize: 32, color: Colors.grey[400]))),
                Spacer(
                  flex: 1,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(expression.length < 5 ? "○" : '●',
                        style: GoogleFonts.montserrat(
                            fontSize: 32, color: Colors.grey[400]))),
                Spacer(
                  flex: 1,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(
                      expression.length < 6 ? "○" : '●',
                      style: GoogleFonts.montserrat(
                          fontSize: 32, color: Colors.grey[400]),
                    )),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
            Spacer(flex: 1,)
,            Text(
              "Forgot your PIN?",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
                            Text(
                  "RESET PIN",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    isIcon: false,
                    text: "1",
                    textColor: 0xFFFFFFFF,
                    callback: _callbackAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "2",
                    textColor: 0xFFFFFFFF,
                    callback: _callbackAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "3",
                    callback: _callbackAdd,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "4",
                    callback: _callbackAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "5",
                    callback: _callbackAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "6",
                    callback: _callbackAdd,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "7",
                    callback: _callbackAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "8",
                    callback: _callbackAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "9",
                    callback: _callbackAdd,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcButton(
                    isIcon: true,
                    icondata: (Icons.fingerprint),
                    textColor: 0xFFFFFFFF,
                  ),
                  CalcButton(
                    isIcon: false,
                    textColor: 0xFFFFFFFF,
                    text: "0",
                    callback: _callbackAdd,
                  ),
                  CalcButton(
                    isIcon: true,
                    icondata: Icons.arrow_back,
                    callback: _callbackRemove,
                    textColor: 0xFFFFFFFF,
                  )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
