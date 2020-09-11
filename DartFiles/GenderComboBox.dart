import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseGender extends StatefulWidget {
  @override
  _ChooseGenderState createState() => _ChooseGenderState();
}

class _ChooseGenderState extends State<ChooseGender> {
  List _genders=['Select Gender','Female','Male','Other'];
  List<DropdownMenuItem<String>> _dropdownMenuItems;
  String _currentGender;

  @override
  void initState() {
    _dropdownMenuItems = getDropdownMenuItems();
    _currentGender = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropdownMenuItems()
  {
    List<DropdownMenuItem<String>> items = new List();
    for(String city in _genders)
      {
        items.add(new DropdownMenuItem(
          value : city,
          child : new Text(city)
        ));
      }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(value: _currentGender,
        style: GoogleFonts.roboto(textStyle: TextStyle(
          color: Color.fromRGBO(40, 44, 53, 1.0),)
        ),
        underline: Container(
          height: 2,
          color: Colors.white,
        ),
        items: _dropdownMenuItems,
        onChanged: changedDropdownItem);
  }

  void changedDropdownItem(String selectedGender)
  {
    setState(() {
      _currentGender = selectedGender;
    });
  }
}

