import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 class RoundedTextField extends StatefulWidget{
  final String textFieldText;
  final String typeOfData;
  final TextEditingController textFieldController;
  RoundedTextField(this.textFieldText,this.textFieldController,this.typeOfData);

  @override
  _RoundedTextFieldState createState() => _RoundedTextFieldState();
}

class _RoundedTextFieldState extends State<RoundedTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
     style: GoogleFonts.roboto(textStyle : TextStyle(color: Color.fromRGBO(40, 44, 53, 1.0), height: 1.0),),
     obscureText: widget.typeOfData=='password',
     controller: widget.textFieldController,
     decoration : InputDecoration(
      border: OutlineInputBorder(
       borderSide: BorderSide.none,
       borderRadius: const BorderRadius.all(
        const Radius.circular(19.0),
       ),
      ),
      filled: true,
      fillColor : Color.fromRGBO(255, 255, 255, 0.35),
      labelText: widget.textFieldText,
      labelStyle: GoogleFonts.roboto( textStyle : TextStyle(color : Colors.white),),
     ),
    );
  }
 }