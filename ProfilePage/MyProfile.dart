import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyProfile extends StatelessWidget {
  final String profileName = 'Roshan Jacob Manoj';
  final String profileAddress = "Malad East, Mumbai, India";
  final DateTime dateBirth = DateTime(1999, 1, 22);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: Color.fromRGBO(243, 248, 255, 1.0),
      child: Opacity(
        opacity: 0.8,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment(-0.5, 1.0),
              colors: [
                const Color.fromRGBO(53, 242, 152, 0.55),
                const Color.fromRGBO(0, 102, 255, 0.83)
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: screenHeight * (115 / 833)),
                CircleAvatar(radius: 34.0),
                SizedBox(height: screenHeight * (25 / 833)),
                Text(
                  profileName,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 0.11,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * (24 / 833)),
                Text(
                  "Date Of Birth: " + DateFormat.yMMMMd().format(dateBirth),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    letterSpacing: 0.11,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * (8 / 833)),
                Text(
                  profileAddress,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    letterSpacing: 0.11,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
