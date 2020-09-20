import 'package:flutter/material.dart';
import 'package:home_page_1/diagnosis_card.dart';

// Class calls the backend to hold the diagnosis details
class ListDiagnosis {
  List diagnosisTitle = [];
  List diagnosisDoctor = [];
  List diagnosisDate = [];

  ListDiagnosis({length = 3}) {
    // call backend
    diagnosisTitle.clear();
    diagnosisDoctor.clear();
    diagnosisDate.clear();
    for (int i = 0; i < length; i++) {
      diagnosisTitle.add("Diagnosis " + i.toString());
      diagnosisDoctor.add("Doctor " + i.toString() + " Visited for Diagnosis");
      diagnosisDate.add(DateTime(2020, (length - i) % 12, (i + 4) % 30));
      diagnosisDate.sort();
    }
  }

  Widget generateDiagnosis(context, index) {
    bool colored = false;
    if (index % (diagnosisTitle.length / 10) == 0) {
      colored = true;
    }
    return DiagnosisCard(
      title: diagnosisTitle[index],
      subtitle: diagnosisDoctor[index],
      date: diagnosisDate[index],
      colored: colored,
    );
  }
}
