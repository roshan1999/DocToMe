import 'package:flutter/material.dart';
import 'package:home_page_1/slider.dart' as slider;
import 'search_bar.dart' as searchBar;

void main() {
  runApp(new MaterialApp(
    home: HomePageSection(),
  ));
}

class HomePageSection extends StatefulWidget {
  @override
  HomePageSectionArea createState() => new HomePageSectionArea();
}

class HomePageSectionArea extends State<HomePageSection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            locationAndSearchbar(),
            slider.Slider(),
          ],
        ),
      ),
    );
  }
}

Widget locationAndSearchbar() {
  return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          locationConfigure(),
          // searchBar.SearchBarWidget()
        ],
      ));
}

Widget locationConfigure() {
  return Container(
    child: new Icon(Icons.location_on),
  );
}
