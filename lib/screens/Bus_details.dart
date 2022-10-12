import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university/const.dart';

class Bus_Details extends StatelessWidget {
  static String id = "Bus_Details";
  const Bus_Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: swatch1,
        title: Text(
          "My Bus Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "🚍",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "My Bus Details",
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Shivansh Agrawal",
                style: TextStyle(fontSize: 20, color: swatch1),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: swatch1,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Fee Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "Fees: 22000",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    "Deposited: 22000",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ],
            ),
            Text(
              "Remaining Amount:0",
              style: TextStyle(
                  color: Colors.pink.withOpacity(0.85),
                  fontStyle: FontStyle.italic,
                  fontSize: 18),
            ),
            SizedBox(
              height:5
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: swatch1,
              child: Column(
                children: const [
                  Center(
                    child: Text(
                      "Bus Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    "Stopage: Krishna Puri",
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.85)),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    "Bus No: No",
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.85)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    "Row No: No",
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.85)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text("Seat No: No",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 18, color: Colors.black.withOpacity(0.85)),
                      )),
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  color: swatch1,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
