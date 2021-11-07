import 'package:flutter/material.dart';
import 'package:sm_food/screen/auth_screen.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AuthScreen()),
        );
      },
      child: Text(
        "Get Started",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        // for foreground color
        onPrimary: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 120, vertical: 12),
        elevation: 0.0,
        primary: Color(0xff22A45D),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
