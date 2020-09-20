import 'package:flutter/material.dart';
import 'package:home_page_1/promotional_slider.dart' as promotionaSlider;
import 'package:home_page_1/option_card.dart' as options;
import 'package:home_page_1/list_diagnosis.dart' as listDiagnosis;

class HomePageContent extends StatefulWidget {
  @override
  HomePageContentState createState() => new HomePageContentState();
}

class HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        promotionaSlider.PromotionSlider(),
        options.OptionCards(),
        listDiagnosis.ListDiagnosis().generateDiagnosis(context, 4),
      ],
    );
  }
}
