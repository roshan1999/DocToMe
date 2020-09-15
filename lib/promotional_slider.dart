import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'temp_page.dart';

class PromotionSlider extends StatefulWidget {
  @override
  PublicCarousel createState() => new PublicCarousel();
}

class PublicCarousel extends State<PromotionSlider> {
  List cardList;
  int _currentIndex = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  PublicCarousel() {
    cardList = [
      Temp(300, "1.jpg"),
      Temp(200, "2.jpg"),
      Temp(500, "3.jpg"),
      Temp(700, "4.jpg"),
      Temp(600, "5.jpg")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.3,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            aspectRatio: 2.0,
            onPageChanged: (index, context) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: cardList.map((card) {
            return Builder(builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.blueAccent,
                  child: card,
                ),
              );
            });
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(
            cardList,
            (index, url) {
              return Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      _currentIndex == index ? Colors.blueAccent : Colors.grey,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
