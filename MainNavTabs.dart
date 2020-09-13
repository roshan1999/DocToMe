import 'package:flutter/material.dart';
import 'ProfilePage/ProfilePage.dart';
import 'TempPage/temp_page.dart';


class MainNavTabs extends StatefulWidget {
  @override
  MainNavTabsState createState() => new MainNavTabsState();
}

class MainNavTabsState extends State<MainNavTabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return new Scaffold(
      backgroundColor: Color.fromRGBO(243, 248, 255, 1.0),
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        child: new TabBar(
          labelPadding: EdgeInsets.only(bottom: screenHeight * (9/823)),
          indicatorPadding: EdgeInsets.only(bottom:screenHeight*(14/823)),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.8,
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.account_circle)),
            new Tab(icon: new Icon(Icons.card_travel)),
            new Text(""),
            new Tab(icon: new Icon(Icons.search)),
            new Tab(icon: new Icon(Icons.chat_bubble))
          ],
          labelColor: Color.fromRGBO(0, 102, 255, 0.664),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: new TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: <Widget>[
          new ProfilePage(),
          new Temp(),
          new Temp(),
          new Temp(),
          new Temp()
        ],
      ),
    );
  }
}
