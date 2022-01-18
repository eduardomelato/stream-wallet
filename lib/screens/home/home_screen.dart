import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream/constants.dart';
import 'package:stream/screens/home/card_center.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        toolbarHeight: size.height * 0.24,
        flexibleSpace: Container(
          color: kPrimaryBlue,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                "assets/component2.png",
                fit: BoxFit.cover,
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "R\$ 358.440,66",
                              style: GoogleFonts.montserrat(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                              children: [
                            TextSpan(
                                text: "\nConta Ativa",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w300))
                          ])),
                      Spacer(
                        flex: 6,
                      ),
                      Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 22,
                            backgroundImage: AssetImage("assets/avatar.jpg"),
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      )
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      HomeSquaredButtons(
                        label: "Send",
                        asset: "assets/send.png",
                        callback: () {},
                      ),
                      Spacer(),
                      HomeSquaredButtons(
                        label: "Request",
                        asset: "assets/request.png",
                        callback: () {},
                      ),
                      Spacer(),
                      HomeSquaredButtons(
                        label: "In & Out",
                        asset: "assets/inout.png",
                        callback: () {},
                      ),
                      Spacer(),
                      HomeSquaredButtons(
                        label: "QR Code",
                        asset: "assets/qrcode.png",
                        callback: () {},
                      ),
                      Spacer()
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[200],
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: double.infinity,
                    child: MaterialButton(
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  CardCenterPage(),
                            ),
                          );
                      },
                      child: Column(
                        children: [
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(),
                              Text(
                                "Card Center",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Spacer(
                                flex: 12,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey[600],
                                size: 16,
                              ),
                              Spacer()
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: size.width * 0.89,
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Spacer(),
                                CardDataContainer(
                                  cardname: "Virtual Card",
                                  cardnumber: "0123",
                                  money: "342.000,00",
                                ),
                                Divider(
                                  indent: 15,
                                  endIndent: 12,
                                  thickness: 1,
                                ),
                                CardDataContainer(
                                  cardname: "Platinum Card",
                                  cardnumber: "3210",
                                  money: "    16.440,66",
                                ),
                                Spacer()
                              ],
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.3,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      highlightColor: Colors.transparent,
                      child: Column(
                        children: [
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(),
                              Text(
                                "Moneytory",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Spacer(
                                flex: 12,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey[600],
                                size: 16,
                              ),
                              Spacer()
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: size.width * 0.89,
                            height: size.height * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Spacer(),
                                Row(
                                  children: [
                                    Spacer(),
                                    RichText(
                                      text: TextSpan(
                                          text: "Expenses",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                          children: [
                                            TextSpan(
                                              text:
                                                  "\n01 Jan 2022 - 17 Jan 2022",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  color: Colors.grey[600],
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            TextSpan(
                                              text: "\nR\$ 1280,73",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ]),
                                    ),
                                    Spacer(
                                      flex: 2,
                                    ),
                                    Image.asset(
                                      "assets/graphic.png",
                                      scale: 3.6,
                                    ),
                                    Spacer()
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Spacer(),
                                    Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: kPrimaryBlue,
                                            border:
                                                Border.all(color: kPrimaryBlue),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            child: Text(
                                              "76% Electronics",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                    Spacer(),
                                    Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: kOrange,
                                            border: Border.all(color: kOrange),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            child: Text(
                                              "18% Food",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                    Spacer(),
                                    Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: kYellow,
                                            border: Border.all(color: kYellow),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25))),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            child: Text(
                                              "6% Services",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )),
                                    Spacer()
                                  ],
                                ),
                                Spacer()
                              ],
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.4,
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      highlightColor: Colors.transparent,
                      child: Column(
                        children: [
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(),
                              Text(
                                "In & Out",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              Spacer(
                                flex: 12,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey[600],
                                size: 16,
                              ),
                              Spacer()
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: size.width * 0.89,
                            height: size.height * 0.3,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Column(
                              children: [
                                Spacer(),
                                DataContainer(
                                  name: "Gustavo",
                                  date: "16 Jan 2022",
                                  money: "+ R\$ 10,00",
                                  textColor: 0xFF19B832,
                                ),
                                Spacer(),
                                Divider(
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 12,
                                ),
                                Spacer(),
                                DataContainer(
                                  name: "Giovani",
                                  date: "16 Jan 2022",
                                  money: "+ R\$ 9,65",
                                  textColor: 0xFF19B832,
                                ),
                                Spacer(),
                                Divider(
                                  thickness: 1,
                                  indent: 15,
                                  endIndent: 12,
                                ),
                                Spacer(),
                                DataContainer(
                                  name: "Amazon Prime",
                                  date: "12 Jan 2022",
                                  money: "R\$ 9,90",
                                  textColor: 0xFFff0019,
                                ),
                                Spacer()
                              ],
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
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
