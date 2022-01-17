import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryBlue = Color(0xFF005CEE);



//Keyboard Auth Button:

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;
  final bool isIcon;
  final IconData icondata;

  const CalcButton({
    Key key,
    this.text,
    this.fillColor,
    this.textColor = 0xFF000000,
    this.textSize = 28,
    this.callback, this.isIcon, this.icondata,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          onPressed: () {
            isIcon? print("kkk") : callback(text);
          },
          child: isIcon? Icon(icondata) : Text(
            text,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: textSize,
              ),
            ),
          ),
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ),
      ),
    );
  }
}