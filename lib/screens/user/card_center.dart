import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stream/constants.dart';

class CardCenterPage extends StatefulWidget {
  const CardCenterPage({Key key}) : super(key: key);

  @override
  _CardCenterPageState createState() => _CardCenterPageState();
}

class _CardCenterPageState extends State<CardCenterPage> {
  int currentPage = 0;
  int currentPage2 = 0;
  List<Map<String, dynamic>> cardData = [
    {
      "cardnumber": "0123",
      "date": "11/27",
      "color": 0xFF000000,
      "balance": "R\$ 342.000,00",
      "limit": "R\$ 50.000,00",
      "withlimit": "Virtual Card Only"
    },
    {
      "cardnumber": "0321",
      "date": "08/27",
      "color": 0xFF005CEE,
      "balance": "R\$ 16.440,66",
      "limit": "R\$ 20.000,00",
      "withlimit": "R\$ 5.000,00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card Center",
          style: GoogleFonts.poppins(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: size.height * 0.33,
                width: size.width,
                color: Colors.white,
                child: PageView.builder(
                    onPageChanged: (val) {
                      setState(() {
                        currentPage = val;
                      });
                    },
                    itemCount: cardData.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: CreditCard(
                            size: size,
                            cardnumber: cardData[index]["cardnumber"],
                            date: cardData[index]["date"],
                            color: cardData[index]["color"],
                          ),
                        ))),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    cardData.length, (index) => dotIndicator(index: index))),
            SizedBox(
              height: 4,
            ),
            Divider(
              thickness: 0.7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 13),
                  child: Text("Card Details",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                ),
                Text("Transactions",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600)),
              ],
            ),
            Row(
              children: List.generate(
                  cardData.length, (index) => containerIndicator(size, index)),
            ),
            Container(
                height: size.height * 0.4,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage2 = value;
                      });
                    },
                    itemCount: cardData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return currentPage2 == 0
                          ? SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Spacer(),
                                            RichText(
                                              text: TextSpan(
                                                  text: "Active Balance",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.grey[600],
                                                      fontSize: 16),
                                                  children: [
                                                    TextSpan(
                                                        text: "\n" +
                                                            cardData[
                                                                    currentPage]
                                                                ["balance"],
                                                        style:
                                                            GoogleFonts.poppins(
                                                                color:
                                                                    Colors
                                                                        .black,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                  ]),
                                            ),
                                            Spacer(flex: 3),
                                            Icon(Icons.lock_outline,
                                                color: kPrimaryBlue),
                                            Text("Show CVV",
                                                style: GoogleFonts.poppins(
                                                    color: kPrimaryBlue,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Spacer(),
                                          ],
                                        ),
                                        Divider(
                                          indent: 15,
                                          endIndent: 15,
                                          thickness: 1,
                                        ),
                                        Row(
                                          children: [
                                            Spacer(),
                                            RichText(
                                              text: TextSpan(
                                                  text: "Limit",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.grey[600],
                                                      fontSize: 16),
                                                  children: [
                                                    TextSpan(
                                                        text: "\n" +
                                                            cardData[
                                                                    currentPage]
                                                                ["limit"],
                                                        style:
                                                            GoogleFonts.poppins(
                                                                color:
                                                                    Colors
                                                                        .black,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                  ]),
                                            ),
                                            Spacer(flex: 6),
                                            Icon(Icons.more_vert,
                                                color: Colors.grey[600]),
                                            Spacer(),
                                          ],
                                        ),
                                        Divider(
                                          indent: 15,
                                          endIndent: 15,
                                          thickness: 1,
                                        ),
                                        Row(
                                          children: [
                                            Spacer(),
                                            RichText(
                                              text: TextSpan(
                                                  text: "Withdrawal Limit",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.grey[600],
                                                      fontSize: 16),
                                                  children: [
                                                    TextSpan(
                                                        text: "\n" +
                                                            cardData[
                                                                    currentPage]
                                                                ["withlimit"],
                                                        style:
                                                            GoogleFonts.poppins(
                                                                color:
                                                                    Colors
                                                                        .black,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                  ]),
                                            ),
                                            Spacer(flex: 5),
                                            Icon(Icons.more_vert,
                                                color: Colors.grey[600]),
                                            Spacer(),
                                          ],
                                        ),
                                        Divider(
                                          indent: 15,
                                          endIndent: 15,
                                          thickness: 1,
                                        ),
                                        Row(
                                          children: [
                                            Spacer(
                                              flex: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  border: Border.all(
                                                      color: Colors.grey[200]),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              height: 55,
                                              width: 55,
                                              child: Center(
                                                  child: Icon(Icons.pattern)),
                                            ),
                                            Spacer(
                                              flex: 5,
                                            ),
                                            Text(
                                              "Change Pin",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Spacer(
                                              flex: 75,
                                            )
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1,
                                          indent: 15,
                                          endIndent: 15,
                                        ),
                                        Row(
                                          children: [
                                            Spacer(
                                              flex: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  border: Border.all(
                                                      color: Colors.grey[200]),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              height: 55,
                                              width: 55,
                                              child: Center(
                                                  child: Icon(Icons.block)),
                                            ),
                                            Spacer(
                                              flex: 5,
                                            ),
                                            Text(
                                              "Block Card",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Spacer(
                                              flex: 75,
                                            )
                                          ],
                                        ),
                                        Divider(
                                            thickness: 1,
                                            indent: 15,
                                            endIndent: 15),
                                        Row(
                                          children: [
                                            Spacer(
                                              flex: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  border: Border.all(
                                                      color: Colors.grey[200]),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                              height: 55,
                                              width: 55,
                                              child: Center(
                                                  child: Icon(Icons.payment)),
                                            ),
                                            Spacer(
                                              flex: 5,
                                            ),
                                            Text(
                                              "Change Limit",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                            Spacer(
                                              flex: 75,
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
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
                    }))
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
      color: currentPage2 == index ? kPrimaryBlue : null,
    );
  }

  AnimatedContainer dotIndicator({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 24 : 6,
      decoration: BoxDecoration(
          color: Colors.grey[400], borderRadius: BorderRadius.circular(3)),
    );
  }
}
