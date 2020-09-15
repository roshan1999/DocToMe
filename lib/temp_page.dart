import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  // const Temp({Key key}) : super(key: key);
  int selcolor = 400;
  String imageName = "sampleBanner";
  Temp(int colorsel, String imageName) {
    selcolor = colorsel;
    this.imageName += imageName;
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
          color: Colors.deepOrange[selcolor],
          image: DecorationImage(
              image: AssetImage('assets/images/' + imageName), fit: BoxFit.fill)
          // boxShadow: [BoxShadow()],
          ),
      // child: new Center(
      //   child: new Icon(Icons.add_location,
      //       size: 60.0, color: Colors.indigoAccent[selcolor]),
      // ),
    );
  }
}
