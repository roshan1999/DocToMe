import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Reg3TextField extends StatefulWidget {
  final String textFieldText;
  final String typeOfData;
  final TextEditingController textFieldController;
  Reg3TextField(this.textFieldText,this.textFieldController,this.typeOfData);
  @override
  _Reg3TextFieldState createState() => _Reg3TextFieldState();
}

class _Reg3TextFieldState extends State<Reg3TextField> {
  TextEditingController dateFieldController;
  @override
  void initState() {
    dateFieldController=new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  DateTime date;
  @override
  Widget build(BuildContext context) {
    Future<void> chooseDate() async
    {
      final DateTime dT=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1950), lastDate: DateTime.now());
      if(dT!=null)
        {
          setState(() {
            dateFieldController.value=TextEditingValue(text :DateFormat('dd-MM-yyyy').format(dT));
          });
        }
    }
    return GestureDetector(
      onTap: chooseDate,
      child: AbsorbPointer(
        child: TextFormField(
          style: GoogleFonts.roboto(textStyle : TextStyle(color: Color.fromRGBO(40, 44, 53, 1.0), height: 1.0),),
          controller: dateFieldController,
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
        ),
      ),
    );
  }
}
