import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DiagnosisCard extends StatelessWidget {
  DiagnosisCard(  {this.title, this.subtitle, this.date,this.colored});

  final String title;
  final String subtitle;
  final DateTime date;
  final bool colored;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.fromLTRB(screenWidth * 27 / 411,
      0, screenWidth * (27 / 411), screenHeight * (21 / 833)),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 4.0),
              blurRadius: 4.0,
              spreadRadius: 0.0,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            ),
          ],
        ),
        height: screenHeight * (77 / 833),
        child: Container(
          padding: EdgeInsets.fromLTRB(18.38,0,20.0,0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: !colored?Color.fromRGBO(255, 255, 255, 1.0):Color.fromRGBO(0, 102, 255, 0.63),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex:2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.concertOne(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: !colored?Color.fromRGBO(58, 43, 66, 1.0):Colors.white,
                      ),
                    ),
                    Text(subtitle,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: !colored?Color.fromRGBO(121, 129, 168, 1.0):Colors.white,
                    )),
                  ],
                ),
              ),
              Expanded(
                flex:1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(DateFormat.E().format(date) + ", " + DateFormat.d().format(date),
                      style: GoogleFonts.concertOne(
                       color: !colored?Color.fromRGBO(58, 43, 66, 1.0):Colors.white,
                       fontWeight: FontWeight.w600,
                       fontSize: 16,
                      )),
                    ),
                    SizedBox(height: 4),
                    Flexible(
                      child: Text(DateFormat.MMM().format(date) + ", " + DateFormat.y().format(date),
                      style: GoogleFonts.concertOne(
                        color: !colored?Color.fromRGBO(58, 43, 66, 1.0):Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
