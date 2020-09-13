import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FixedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            debugPrint('Back Button Icon in HomePage clicked');
          },
        ),
        Text(
          "My Profile",
          style: GoogleFonts.concertOne(
            textStyle: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              wordSpacing: 5,
            ),
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
        IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              debugPrint('Edit Profile Icon in HomePage clicked');
            }),
      ],
    );
  }
}
