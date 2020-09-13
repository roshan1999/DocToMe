import 'package:flutter/material.dart';
import 'package:flutter_app/ListCards/ListDiagnosis.dart';
import 'package:flutter_app/TabBar/ColoredTabBar/ColoredTabBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FixedAppBar.dart';
import 'MyProfile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 248, 255, 1.0),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                backgroundColor: Color.fromRGBO(0, 145, 221, 1.0),
                title: FixedAppBar(),
                bottom: ColoredTabBar(
                  Color.fromRGBO(243, 248, 255, 1.0),
                  TabBar(
                    labelColor: Colors.white,
                    labelStyle: GoogleFonts.concertOne(
                        fontWeight: FontWeight.w500, fontSize: 16),
                    unselectedLabelColor: Colors.white54,
                    unselectedLabelStyle: GoogleFonts.concertOne(
                        fontWeight: FontWeight.w100, fontSize: 16),
                    indicatorColor: Colors.transparent,
                    tabs: <Widget>[
                      Text(
                        "Past Diagnosis",
                        textAlign: TextAlign.center,
                      ),
                      Text("Ongoing"),
                      Text("Upcoming")
                    ],
                  ),
                ),
                pinned: true,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: MyProfile(),
                ),
                expandedHeight: screenHeight * 0.4,
              ),
            ];
          },
          body: TabBarView(
            children: [
              /*Past Diagnosis*/
              ListView.builder(
                itemBuilder: (context, index) => ListDiagnosis(length: 100)
                    .generateDiagnosis(context, index),
                itemCount: 100,
              ),
              /*Ongoing Diagnosis*/
              ListView.builder(
                itemBuilder: (context, index) =>
                    ListDiagnosis(length: 70).generateDiagnosis(context, index),
                itemCount: 70,
              ),
              /*Upcoming Diagnosis*/
              ListView.builder(
                itemBuilder: (context, index) =>
                    ListDiagnosis(length: 25).generateDiagnosis(context, index),
                itemCount: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
