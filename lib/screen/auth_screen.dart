import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/widgets.dart';
import 'package:sm_food/screen/login.dart';

class AuthScreen extends StatelessWidget {
  // const AuthScreen({Key? key}) : super(key: key);
  final heading = TextStyle(fontSize: 30, fontWeight: FontWeight.w100);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
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
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 70),
                      child: Text("sm-food",
                          style: GoogleFonts.fredokaOne(textStyle: heading)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 50.0),
                      height: 300,
                      width: 300,
                      child: Image.asset(
                        "assests/image/logo/handsake.png",
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    // for foreground color
                    onPrimary: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                    elevation: 0.0,
                    primary: Color(0xff22A45D),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Create Account",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    // for foreground color
                    onPrimary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 12),
                    elevation: 0.0,
                    primary: Color(0xff22A45D),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                
              ],
            )),
      ),
    );
  }
}
