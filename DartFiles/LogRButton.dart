import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Registration2.dart';
import 'Registration3.dart';
import 'Registration4.dart';

class LogRButton extends StatelessWidget
{
  final String textOnButton;
  final String routedTo;
  LogRButton(this.textOnButton, this.routedTo);
  @override
  Widget build(BuildContext context) {
    if (textOnButton=='Verify OTP') {
      return RaisedButton(
        textColor: Color.fromRGBO(40, 44, 53, 1.0),
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19.0)
        ),
        child: Text(textOnButton,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 14))),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Registration3()),
          );
        },
      );
    }
    else
      {
        return RaisedButton(
          textColor: Color.fromRGBO(40, 44, 53, 1.0),
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.0)
          ),
          child: Text(textOnButton,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontFamily: 'Roboto', fontSize: 18))),
          onPressed: () {
            if (routedTo == 'Sign in') {
              /* Navigator.push(
            context,
            Material PageRoute( builder(context) => DummyHomePageActivity()),
            )
            */
            }
            else if (routedTo == 'Register') {
              /* Navigator.push(
            context,
            Material PageRoute( builder(context) => DummyHomePageActivity()),
            )
            */
            }
            else if(routedTo == 'toRegistration2'){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Registration2()),
              );
            }
            else if(routedTo == 'toRegistration4'){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Registration4()),
              );
            }
          },
        );
      }
  }
}