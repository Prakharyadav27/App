import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:university/const.dart';
import 'package:university/screens/Bus_details.dart';

class Home_Screen extends StatelessWidget {
  static String id = "Home_Screen";
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 30,
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: swatch1,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(
            top: 27,
            left: 40,
          ),
          child: Stack(children: [
            Positioned(
              child: FlatButton(
                  child: Text(
                    'GLA University',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 22, color: swatch2),
                  ),
                  onPressed: () {},
                  focusColor: Colors.transparent),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 38.0, left: 20, bottom: 5),
                child: Text(
                  "Mathura",
                  textAlign: TextAlign.start,
                  style:
                      TextStyle(color: swatch2.withOpacity(0.5), fontSize: 16),
                ),
              ),
            ),
          ]),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.swap_horiz_rounded,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Container(
                height: 50,
                color: swatch2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Bus_Details.id);
                      },
                      child: ReusableDetailscolumn(
                        text: "🚇BUS DETAILS",
                      ),
                    ),
                    Spacer(),
                    ReusableDetailscolumn(
                      text: "📝TIMETABLE",
                    ),
                    Spacer(),
                    ReusableDetailscolumn(
                      text: "🤵ATTENDENCE",
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: double.infinity - 20,
                height: 140,
                child: Image.asset(
                  "assets/glaU.jpeg",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Card(
                  child: Container(
                    height: 250,
                    width: double.infinity - 20,
                    color: swatch2,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipOval(
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      child:
                                          Image.asset("assets/shivansh.jpeg"))),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Shivansh Agrawal",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:  [
                                    RichText(text: TextSpan(
                                      text: "B.Tech-CS( ||| Sem) - ",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                            ),
                                      children: [
                                        TextSpan(
                                          text: "Registred",
                                          style: TextStyle(color: swatch1)
                                        ),

                                      ]
                                    ),
                                    )
                                    // Text(
                                    //   "B.Tech-CS( ||| Sem) - Registred",
                                    //   style: TextStyle(
                                    //       color: Colors.grey,
                                    //       fontWeight: FontWeight.w500,
                                    //       fontSize: 13),
                                    // )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey[300],
                        ),
                        Image.asset("assets/indictor.jpeg"),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Card(
                child: Container(
                  color: swatch2,
                  height: 90,
                  width: double.infinity - 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "Today's Timetable",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: double.infinity,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "No Timetable Found Today",
                              style: TextStyle(
                                  color: Color(0xFF944a4b),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Card(
                child: Container(
                  color: swatch2,
                  width: double.infinity - 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quick Actions",
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Image.asset("assets/icons.jpeg")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableDetailscolumn extends StatelessWidget {
  String text = "text";
  ReusableDetailscolumn({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey, fontSize: 14),
    );
  }
}
