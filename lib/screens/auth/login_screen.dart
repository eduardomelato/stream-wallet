import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream/constants.dart';
import 'package:stream/screens/auth/pin.dart';
import 'package:stream/screens/auth/register_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  void _toggleVisivility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
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
              "Sign In",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text("Welcome back to Stream",
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
                obscureText: _isObscure,
                keyboardType: TextInputType.emailAddress,
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      _toggleVisivility();
                    },
                  ),
                  labelText: "Password",
                  labelStyle: GoogleFonts.poppins(fontSize: 18),
                ),
              ),
            ),
            Spacer(),
            RichText(
                text: TextSpan(text: "Don't have an account?",style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[600]), children: [
              TextSpan(
                  text: " Register",style: GoogleFonts.poppins(fontSize: 14, color: kPrimaryBlue, fontWeight: FontWeight.w500),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  RegisterPage(),
                            ),
                          ))
            ])),
            Spacer(
              flex: 6,
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
                        "Sign In",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => PinPage(),
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
