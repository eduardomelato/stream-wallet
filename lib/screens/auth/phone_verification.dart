import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream/constants.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key key}) : super(key: key);

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  String _expression = "";
  void _callbackFunctionAdd(String val) {
    setState(() {
      _expression += val;
    });
    if (_expression.length == 6) {
      print(_expression);
    }
  }

  void _callbackFunctionRemove(String val) {
    setState(() {
      _expression = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              showCupertinoDialog(context: context, builder: _createDialog);
            },
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Verification",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
                "Verify the handphone number by entering\nthe verification code",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600])),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(_expression.isEmpty ? "" : _expression[0],
                        style: GoogleFonts.montserrat(fontSize: 22))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(_expression.length < 2 ? "" : _expression[1],
                        style: GoogleFonts.montserrat(fontSize: 22))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(_expression.length < 3 ? "" : _expression[2],
                        style: GoogleFonts.montserrat(fontSize: 22))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(_expression.length < 4 ? "" : _expression[3],
                        style: GoogleFonts.montserrat(fontSize: 22))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(_expression.length < 5 ? "" : _expression[4],
                        style: GoogleFonts.montserrat(fontSize: 22))),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 50,
                    width: 30,
                    child: Text(
                      _expression.length < 6 ? "" : _expression[5],
                      style: GoogleFonts.montserrat(fontSize: 22),
                    ))
              ],
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
                    callback: _callbackFunctionAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "2",
                    callback: _callbackFunctionAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "3",
                    callback: _callbackFunctionAdd,
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
                    text: "4",
                    callback: _callbackFunctionAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "5",
                    callback: _callbackFunctionAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "6",
                    callback: _callbackFunctionAdd,
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
                    text: "7",
                    callback: _callbackFunctionAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "8",
                    callback: _callbackFunctionAdd,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "9",
                    callback: _callbackFunctionAdd,
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
                    icondata: Icons.fingerprint,
                  ),
                  CalcButton(
                    isIcon: false,
                    text: "0",
                    callback: _callbackFunctionAdd,
                  ),
                  CalcButton(
                    isIcon: true,
                    icondata: Icons.arrow_back,
                    callback: _callbackFunctionRemove,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _createDialog(BuildContext context) => CupertinoAlertDialog(
      title: Text("This is a fake verification."),
      content: Text(
          "Don't mind the numbers, once you typed 6 digits you will move to the next page!"),
          actions: [
            CupertinoDialogAction(child: Text("OK"), onPressed: ()=>Navigator.pop(context),)
          ],
    );
