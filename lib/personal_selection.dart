import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pingu/idea_card2.dart';
import 'package:pingu/tabview/idea_card.dart';

import 'model/item.dart';

class PersonalSelection extends StatefulWidget {
  @override
  _PersonalSelectionState createState() => _PersonalSelectionState();
}

class _PersonalSelectionState extends State<PersonalSelection> {
  final ScrollController scrollController = new ScrollController();

  final ScrollController itemController = new ScrollController();

  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    _buildTabItem(text, index) {
      return InkWell(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selectedTab == index
                  ? Theme.of(context).highlightColor
                  : Colors.transparent),
        ),
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
      );
    }

    _buildTabBar() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        child: SingleChildScrollView(
          key: new PageStorageKey("tabBar"),
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          child: Row(
            children: <Widget>[
              _buildTabItem("All", 0),
              _buildTabItem("Attractions", 1),
              _buildTabItem("Experiences", 2),
              _buildTabItem("Food/Beverages", 3),
              _buildTabItem("Museum", 4),
              _buildTabItem("Etc", 5),
            ],
          ),
        ),
      );
    }

    Future<String> loadAsset() async {
      return await rootBundle.loadString('assets/data.json');
    }

    return Scaffold(
      appBar: new AppBar(
        title: Text("Pingo"),
      ),
      body: Column(
        children: <Widget>[
          _buildTabBar(),
          FutureBuilder(
            future: loadAsset(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data != null) {
                  var data = json.decode(snapshot.data);
                  return Expanded(
                    child: ListView.builder(
                      key: new PageStorageKey("Item"),
                      controller: itemController,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: data['items'].length,
                      itemBuilder: (context, index) {
                        return IdeaCard2(
                            item: Item.fromJSON(data['items'][index]));
                      },
                    ),
                  );
                } else {
                  return Container();
                }
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
