import 'package:flutter/material.dart';
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
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: searchBar.SearchBarWidget(),
        ),
      ),
    );
  }
}
