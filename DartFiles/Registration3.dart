import 'package:flutter/material.dart';
import 'RoundTextfields.dart';
import 'package:LR/LogRButton.dart';
import 'Reg3TextFields.dart';
import 'Heading.dart';

void main() {
  runApp(MaterialApp(
    home: Registration3(),
  ));
}

class Registration3 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Registration3> {
  TextEditingController GenderController = TextEditingController();
  TextEditingController DOBController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQueryData screenInfo = MediaQuery.of(context);
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment(-0.5,1.0),
                    colors: [
                      Color.fromRGBO(53, 242, 152, 0.55),
                      Color.fromRGBO(0, 102, 255, 0.75)
                    ],
                    stops: [
                      0.1,
                      .9,
                    ])),
            child: ListView(
              children: <Widget>[
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (44/823),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (75/823),
                      width: screenInfo.size.width * (40/411),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (75/823),
                      width: screenInfo.size.width * (336/411),
                      child: Container(
                        alignment: Alignment.center,
                        child: PreScribeHeading(),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (75/823),
                      width: screenInfo.size.width * (35/411),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (201/823),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (53/823),
                      width: screenInfo.size.width * (58/411),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (53/823),
                      width: screenInfo.size.width * (296/411),
                      child: Container(
                        child: Reg3TextField("Gender", GenderController,'Gender'),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (53/823),
                      width: screenInfo.size.width * (57/411),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (27/823),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (53/823),
                      width: screenInfo.size.width * (58/411),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (53/823),
                      width: screenInfo.size.width * (296/411),
                      child: Container(
                        child: Reg3TextField("Date Of Birth", DOBController,''),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (53/823),
                      width: screenInfo.size.width * (57/411),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (31/823),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (37/823),
                      width: screenInfo.size.width * (147/411),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (37/823),
                      width: screenInfo.size.width * (118/411),
                      child: Container(
                        child: LogRButton('Next','toRegistration4'),
                      ),
                    ),
                    SizedBox(
                      height: screenInfo.size.height * (37/823),
                      width: screenInfo.size.width * (146/411),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: screenInfo.size.height * (277/823),
                    ),
                  ],
                ),
              ],
            )));
  }
}