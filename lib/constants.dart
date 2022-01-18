import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryBlue = Color(0xFF005CEE);
const kSecondaryBlue = Color(0xFF2F75FD);
const kOrange = Color(0xFFF86F34);
const kYellow = Color(0xFFFFB731);



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
            isIcon? callback() : callback(text);
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

//Squared Buttons in Home Screen "AppBar"
class HomeSquaredButtons extends StatelessWidget {
  final String asset;
  final String label;
  final Function callback;
  
  const HomeSquaredButtons({
    Key key, this.asset, this.label, this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          child: MaterialButton(
            child: Image.asset(asset),
            onPressed: callback,
            color: kSecondaryBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        Text(label,
            style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w300))
      ],
    );
  }
}


//Basic credit card container info for Home Screen
class CardDataContainer extends StatelessWidget {
  final String money;
  final String cardname;
  final String cardnumber;
  
  const CardDataContainer({
    Key key, this.money, this.cardname, this.cardnumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(flex: 2,),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey[200]),
              borderRadius:
                  BorderRadius.all(Radius.circular(10))),
          height: 55,
          width: 55,
          child: Center(
            child: Image.asset(
              "assets/creditcard.png",
              scale: 3,
            ),
          ),
        ),
        Spacer(),
        RichText(
          text: TextSpan(
              text: cardname,
              style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              children: [
            TextSpan(
                text: "\n●●●● ●●●● ●●●● "+cardnumber,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w300))
          ])),
          Spacer(flex: 3),
          Text("R\$ "+money, style: GoogleFonts.montserrat(fontSize: 15.7, color: Colors.black),),
          Spacer()
      ],
    );
  }
}


//Data Container
class DataContainer extends StatelessWidget {
  final String money;
  final String name;
  final String date;
  final int textColor;
  
  const DataContainer({
    Key key, this.money, this.name, this.date, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Spacer(),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(color: Colors.grey[200]),
              borderRadius:
                  BorderRadius.all(Radius.circular(10))),
          height: 55,
          width: 55,
          child: Center(
            child: Text(name[0], style: GoogleFonts.poppins(fontSize: 20, color: kPrimaryBlue, fontWeight: FontWeight.w500),)
          ),
        ),
        Spacer(),
        RichText(
          text: TextSpan(
              text: name,
              style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              children: [
            TextSpan(
                text: "\n"+date,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w300))
          ])),
          Spacer(flex: 3),
          Text(money, style: GoogleFonts.montserrat(fontSize: 15.7, fontWeight: FontWeight.w500,color: Color(textColor)),),
          Spacer()
      ],
    );
  }
}

//Credit Card
class CreditCard extends StatelessWidget {
  final String cardnumber;
  final String date;
  final int color;
  final int index;

  const CreditCard({
    Key key,
    @required this.size, this.cardnumber, this.date, this.color, this.index,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.86,
      decoration: BoxDecoration(
          color: Color(color),
          border: Border.all(color: Color(color)),
          borderRadius:
              BorderRadius.all(Radius.circular(10))),
      child: Stack(children: [
        Positioned.fill(
            child: Image.asset("assets/component1.png", color: Colors.grey, fit: BoxFit.cover,)),
        Positioned(
            right: 20,
            top: 20,
            child: Image.asset(
              "assets/cardlogo.png",
              scale: 3.6,
            )),
        Positioned(
            right: 20,
            bottom: 20,
            child: Image.asset(
              "assets/visa.png",
              scale: 3.2,
            )),
        Positioned(
            top: 26,
            left: 20,
            child: Image.asset(
              "assets/chip.png",
              scale: 3.5,
            )),
        Positioned(
          bottom: 20,
          left: 20,
          child: RichText(
            text: TextSpan(
                text: "●●●● ●●●● ●●●● "+cardnumber,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
                children: [
                  TextSpan(
                      text: "\nEDUARDO C MELATO",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Colors.white)),
                  TextSpan(
                      text: "\n\nVALID THRU\n"+date,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.white))
                ]),
          ),
        )
      ]),
    );
  }
}
