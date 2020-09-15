import 'package:flutter/material.dart';

class OptionCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Card(
            elevation: 5,
            child: Container(
              alignment: Alignment(0, 0),
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bookmark),
                  Text("New Appointment"
                      // style: TextStyle(color: Colors.white),
                      )
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              alignment: Alignment(0, 0),
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.library_books),
                  Text("Prescriptions"
                      // style: TextStyle(color: Colors.white),
                      )
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              alignment: Alignment(0, 0),
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  Text("Find a Doctor"
                      // style: TextStyle(color: Colors.white),
                      )
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              alignment: Alignment(0, 0),
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.table_chart),
                  Text("Buy medicines"
                      // style: TextStyle(color: Colors.white),
                      )
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              alignment: Alignment(0, 0),
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wifi_tethering),
                  Text("AI Scan"
                      // style: TextStyle(color: Colors.white),
                      )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
