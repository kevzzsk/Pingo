import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pingu/model/item.dart';
import 'package:pingu/tabview/idea_card.dart';

class IdeaScreen extends StatefulWidget {
  @override
  _IdeaScreenState createState() => _IdeaScreenState();
}

class _IdeaScreenState extends State<IdeaScreen> {
  final TextEditingController _searchQuery = new TextEditingController();

  final ScrollController scrollController = new ScrollController();
  final ScrollController itemController = new ScrollController();

  List ideaList = [];

  int selectedTab = 0;

  int _value ;

  @override
  Widget build(BuildContext context) {
    _buildSearchBar() {
      return Padding(
        padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 0),
        child: TextField(
          autofocus: true,
          controller: _searchQuery,
          cursorColor: Color.fromARGB(255, 250, 82, 32),
          style: new TextStyle(
            color: Color.fromARGB(255, 250, 82, 32),
          ),
          decoration: new InputDecoration(
            prefixIcon:
                new Icon(Icons.search, color: Color.fromARGB(255, 250, 82, 32)),
            hintText: "Have a place in mind?",
            hintStyle: new TextStyle(color: Color.fromARGB(255, 250, 82, 32)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(80)),
          ),
        ),
      );
    }

    _buildDiscover() {
      return Row(
        children: <Widget>[
          Expanded(
                      child: InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Discover Nearby",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  Icon(
                    FontAwesomeIcons.mapPin,
                    size: 14,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            onTap: () {},
        ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: DropdownButton(
            hint: Text("SORT BY"),
            onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
          value: _value,
            items: [
              DropdownMenuItem(
                child: Text("Popularity"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Price - High to Low"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Price - Low to High"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Promotions"),
                value: 4,
              ),
            ],
          ),
        )
        ],
          
      );
    }

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
              color:
                  selectedTab == index ? Theme.of(context).highlightColor : Colors.transparent),
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
        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
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

    return Column(
      children: <Widget>[
        _buildSearchBar(),
        _buildDiscover(),
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
                      return IdeaCard(
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
        )
      ],
    );
  }
}
