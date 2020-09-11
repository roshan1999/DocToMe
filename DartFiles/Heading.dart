import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreScribeHeading extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Text(
      'DocToMe',
      style: GoogleFonts.concertOne(
      textStyle: TextStyle(
        shadows: [
          Shadow(
            blurRadius: 4.0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0.0,4.0),
          ),
        ],
          letterSpacing: 1.2,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 36,
      ),
      ), //GoogleFonts
    );
  }
}