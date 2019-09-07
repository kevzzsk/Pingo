import 'package:flutter/material.dart';
import 'package:pingu/tabview/first_screen.dart';
import 'package:pingu/tabview/idea_screen.dart';
import 'package:pingu/tabview/log_screen.dart';
import 'package:pingu/tabview/plan_screen.dart';



class ItineraryPage extends StatefulWidget{
  @override
  _ItineraryPageState createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> with TickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          title: Text("My Travel Plan"),
          actions: <Widget>[
            IconButton( icon:Icon(Icons.more_vert), onPressed: (){},)
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "About".toUpperCase(),),
              Tab(text: "Plans".toUpperCase(),),
              Tab(text: "Ideas".toUpperCase(),),
              Tab(text: "Logs".toUpperCase(),),
            ],
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(),
            PlanScreen(),
            IdeaScreen(),
            LogScreen(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}


