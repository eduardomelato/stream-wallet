import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream/constants.dart';
import 'package:stream/screens/auth/login_screen.dart';
import 'package:stream/screens/auth/phone_verification.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

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
          IconButton(icon: Icon(Icons.help_outline),onPressed: (){showCupertinoDialog(context: context, builder: _createDialog);},)
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
              "Register",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text("Enter your country code and enter\nyour phone number",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600])),
            Spacer(
              flex: 1,
            ),
            Container(
              width: size.width * 0.89,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: GoogleFonts.poppins(fontSize: 18),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: size.width * 0.89,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: GoogleFonts.poppins(fontSize: 18),
                ),
              ),
            ),
            Spacer(),
            RichText(
                text: TextSpan(
                    text: "Already have an account?",
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Colors.grey[600]),
                    children: [
                  TextSpan(
                      text: " Sign in",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: kPrimaryBlue,
                          fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pop(context))
                ])),
            Spacer(
              flex: 6,
            ),
            RichText(
              textAlign: TextAlign.center,
                text: TextSpan(
                    text: "By submitting this application you confirm that you\nare authorized to share this information and agree\nwith our",
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Colors.grey[600]),
                    children: [
                  TextSpan(
                      text: " Terms and Conditions",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: kPrimaryBlue,
                          fontWeight: FontWeight.w500),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => LoginPage(),
                          ),
                  ))
                ])),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 26.0, top: 32),
                  child: Container(
                    width: size.width * 0.915,
                    height: size.height * 0.073,
                    child: MaterialButton(
                      child: Text(
                        "Send Verification Code",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => PhoneVerification(),
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
      ),
    );
  }
}


Widget _createDialog(BuildContext context) => CupertinoAlertDialog(
      title: Text("Hey, this is fake!"),
      content: Text(
          "Just move on and relax, next page is also fake! Only after this you will register for real"),
          actions: [
            CupertinoDialogAction(child: Text("OK"), onPressed: ()=>Navigator.pop(context),)
          ],
    );
