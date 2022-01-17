import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:select_form_field/select_form_field.dart';
import 'package:stream/constants.dart';
import 'package:stream/screens/auth/pin.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key key}) : super(key: key);

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'Male',
      'label': 'Male',
      'textStyle': GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600]),
    },
    {
      'value': 'Female',
      'label': 'Female',
            'textStyle': GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600]),
    },
    {
      'value': 'nonBinary',
      'label': 'Non Binary',
            'textStyle': GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600]),
    },
    {
      'value': 'nonSpecified',
      'label': 'I\'d rather not say',
            'textStyle': GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600]),
    },
  ];

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
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: size.height,
        child: Column(
          children: [
            Text(
              "Personal Information",
              style: GoogleFonts.poppins(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
                "Personal information is used for\nregistration and validation in Stream",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[600])),
            Spacer(),
            Container(
              width: size.width * 0.89,
              child: TextFormField(
                keyboardType: TextInputType.name,
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
                decoration: InputDecoration(
                  labelText: "Full Name",
                  labelStyle: GoogleFonts.poppins(fontSize: 18),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: size.width * 0.89,
              child: TextFormField(
                keyboardType: TextInputType.text,
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
                decoration: InputDecoration(
                  labelText: "Place of Birth",
                  labelStyle: GoogleFonts.poppins(fontSize: 18),
                ),
              ),
            ),
            Spacer(),
            Container(
              width: size.width * 0.89,
              child: TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  DataInputFormatter()
                ],
                keyboardType: TextInputType.number,
                style:
                    GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_today),
                  labelText: "Date of Birth",
                  labelStyle: GoogleFonts.poppins(fontSize: 18),
                ),
              ),
            ),
            Spacer(),
            Container(
                width: size.width * 0.89,
                child: SelectFormField(
                  type: SelectFormFieldType.dropdown, // or can be dialog
                  initialValue: 'circle',
                  labelText: 'Gender',
                  items: _items,
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                  decoration: InputDecoration(
                    labelStyle: GoogleFonts.poppins(fontSize: 18),
                    labelText: 'Gender',
                    suffixIcon: Icon(Icons.arrow_drop_down, color: Colors.grey[600],)
                  ),
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600]),
                )),
            Spacer(
              flex: 8,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 26.0, top: 32),
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
