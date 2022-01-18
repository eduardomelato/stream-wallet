import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help_outline,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: size.height * 0.2,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Spacer(),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/avatar.jpg"),
                        radius: 48,
                      ),
                    ),
                  ),
                  Spacer(),
                  RichText(
                      text: TextSpan(
                          text: "Eduardo Melato",
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          children: [
                        TextSpan(
                            text: "\n@dumelato",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: Colors.grey[600]))
                      ])),
                  Spacer(
                    flex: 3,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 13),
                  child: Text("Profile",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                Text("Settings",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600)),
              ],
            ),
            Row(
              children:
                  List.generate(2, (index) => containerIndicator(size, index)),
            ),
            Container(
              height: size.height * 0.6,
              child: PageView.builder(
                  onPageChanged: (val) {
                    setState(() {
                      currentPage = val;
                    });
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return currentPage == 0
                        ? SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Personal Information",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[500]),),
                                    Spacer(flex: 9,)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Divider(indent: 15, endIndent: 15, thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Account Number",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),),
                                    Spacer(flex: 5,),
                                    Text("0000000001",style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15, endIndent: 15, thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Phone Number",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),),
                                    Spacer(flex: 4,),
                                    Text("+55 (11) 99999-9999",style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15, endIndent: 15, thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Email",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),),
                                    Spacer(flex: 6,),
                                    Text("edumelato@gmail.com",style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15,endIndent: 15,thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("CEP",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),),
                                    Spacer(flex: 11,),
                                    Text("12345-678",style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15,endIndent: 15,thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Endereço",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),),
                                    Spacer(flex: 7,),
                                    Text("São Paulo, Brasil",style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15,endIndent: 15,thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Device Information",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[500]),),
                                    Spacer(flex: 11,)
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15,endIndent: 15,thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("Primary Device",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),),
                                    Spacer(flex: 7,),
                                    Text("Redmi Note 8",style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15,endIndent: 15,thickness: 1,),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("App Version",style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[700]),),
                                    Spacer(flex: 10,),
                                    Text("2.31.2(138)",style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                                    Spacer(),
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Divider(indent: 15,endIndent: 15,thickness: 1,),
                              ],
                            ),
                          )
                        : Center(
                            child: Container(
                                height: 50,
                                width: 50,
                                child: CircularProgressIndicator(
                                  color: kPrimaryBlue,
                                )));
                  }),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer containerIndicator(Size size, int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      width: size.width * 0.5,
      height: 3,
      color: currentPage == index ? kPrimaryBlue : null,
    );
  }
}
