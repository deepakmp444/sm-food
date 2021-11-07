import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  // const AuthScreen({Key? key}) : super(key: key);
  final heading = TextStyle(fontSize: 50, fontWeight: FontWeight.w100);
  final heading2 = TextStyle(fontSize: 30, fontWeight: FontWeight.w100);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xff22A45D),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Container(
                  //       margin: EdgeInsets.symmetric(vertical: 50.0),
                  //       height: 200,
                  //       width: 200,
                  //       child: Image.asset(
                  //         "assests/image/logo/logo.png",
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Let's Start",
                      style: GoogleFonts.fredokaOne(textStyle: heading)),
                  Text("Business",
                      style: GoogleFonts.fredokaOne(textStyle: heading2)),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(children: [
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "Enter mobile",
                          fillColor: Color(0xFFffffff).withOpacity(0.9),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Color(0xFFffffff).withOpacity(0.9),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                color: Colors.blueAccent, width: 2.0),
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  // for foreground color
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                  elevation: 0.0,
                  primary: Color(0xff22A45D),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
