import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(color: Colors.deepOrange),
      child: new Center(
        child: new Icon(Icons.add_location,
            size: 60.0, color: Colors.indigoAccent[400]),
      ),
    );
  }
}
