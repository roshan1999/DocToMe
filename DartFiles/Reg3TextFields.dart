import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reg3TextField extends StatefulWidget {
  final String textFieldText;
  final String typeOfData;
  final TextEditingController textFieldController;
  Reg3TextField(this.textFieldText,this.textFieldController,this.typeOfData);
  @override
  _Reg3TextFieldState createState() => _Reg3TextFieldState();
}

class _Reg3TextFieldState extends State<Reg3TextField> {
  @override
  Widget build(BuildContext context) {
    var genderChoice;
    DateTime currentDateTime;
    //For Choosing Gender
    chooseGender() async {
      await showDialog<String>(
          context: context,
          child : SimpleDialog(
            elevation: 25.0,
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  genderChoice = 0;
                  Navigator.pop(context);
                },
                child: const Text('Male'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  genderChoice = 1;
                  Navigator.pop(context);
                },
                child: const Text('Female'),
              ),
            ],
          )
      );
    }
    //For choosing Date
    void chooseDate()
    {
      showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1950), lastDate: DateTime.now());
    }
    return TextField(
      style: GoogleFonts.roboto(textStyle : TextStyle(color: Color.fromRGBO(40, 44, 53, 1.0), height: 1.0),),
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
      showCursor: true,
      readOnly: true,
      onTap: ()
      {
        if(widget.textFieldText=='Gender') {
          chooseGender();
        }
        else if(widget.textFieldText=='Date Of Birth')
        {
          chooseDate();
        }
      },
    );
  }
  void StateSetter() {
    setState(() {

    });
  }
}
