import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sm_food/widget/button.dart';

class MainScreen extends StatelessWidget {
  final heading = TextStyle(fontSize: 50, fontWeight: FontWeight.w300);
  final subHeading = TextStyle(fontWeight: FontWeight.normal, fontSize: 17);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    "assests/image/logo/logo.png",
                  ),
                ),
                Center(
                  child: Text("Welcome",
                      style: GoogleFonts.fredokaOne(textStyle: heading)),
                ),
                Center(
                  child: Text(
                    "Order from the best local restaurants",
                    style: GoogleFonts.viga(
                        textStyle: subHeading, color: Color(0xff4F4F4F)),
                  ),
                ),
                Center(
                  child: Text(
                    "with easy on-demand deleivery",
                    style: GoogleFonts.viga(
                        textStyle: subHeading, color: Color(0xff4F4F4F)),
                  ),
                ),
              ],
            ),
            const MyButton()
          ],
        ),
      )),
    );
  }
}
