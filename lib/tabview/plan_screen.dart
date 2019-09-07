import 'package:flutter/material.dart';
import 'package:pingu/tabview/activity_card.dart';
import 'package:pingu/tabview/activity_date.dart';
import 'package:pingu/tabview/activity_travel.dart';

class PlanScreen extends StatefulWidget {
  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  List activities1 = [
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "10:00am",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "River Safari",
      street: "Safari Road",
      postal: "623123",
      price: "\$38/pax",
    ),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "12:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "12:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "Botanic Garden",
      street: "1 Clony Road",
      postal: "821226",
      time: "1.5",
      price: "Free",
    ),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "02:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "03:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
        title: "Katong Laksa",
        street: "51 E Coast Road",
        postal: "921312",
        time: "2",
        price: "\$9/pax")
  ];

  List activities2 = [
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "08:00am",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "10:00am",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "11:00am",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "12:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "01:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard()
  ];

  

  int selectedTab = 0;
  int isMap = 0;

  TextStyle subStyle = TextStyle(
      color: Colors.grey[700], fontWeight: FontWeight.bold, fontSize: 10);
  TextStyle infoStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16);
  TextStyle greenStyle =
      TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16);

  TextStyle _style =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  TextStyle _style2 = TextStyle(
      color: Color.fromARGB(255, 130, 130, 130), fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    _buildContent(index, isMap) {
      if (isMap == 0) {
        switch (index) {
          case 0:
            return Expanded(
                child: ListView.builder(
              itemCount: activities1.length,
              itemBuilder: (buildContext, index) {
                return activities1[index];
              },
            ));

          case 1:
            return Expanded(
                child: ListView.builder(
              itemCount: activities2.length,
              itemBuilder: (buildContext, index) {
                return activities2[index];
              },
            ));

          default:
            return Expanded(
                child: ListView.builder(
              itemCount: activities1.length,
              itemBuilder: (buildContext, index) {
                return activities1[index];
              },
            ));
        }
      } else {
        return Expanded(
          child: Image.asset(
            'assets/Gmaps.jpg',
            fit: BoxFit.fitHeight,
          ),
        );
      }
    }

    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 4, 0, 2),
                    child: Text(
                      "Approx. Spending/PAX For Today",
                      style: subStyle,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(15, 4, 0, 2),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "SGD 200.00 (",style: infoStyle),
                            TextSpan(text: "+50.00",style: greenStyle),
                            TextSpan(text: ")",style: infoStyle)
                          ]
                        ),
                      ))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 4, 0, 2),
                    child: Text(
                      "Approx. Time",
                      style: subStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 4, 0, 2),
                    child: Text(
                      "12 HOURS",
                      style: infoStyle,
                    ),
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.pin_drop),
                onPressed: () {
                  setState(() {
                    isMap = (isMap + 1) % 2;
                  });
                },
              )
            ],
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.grey[100],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 80,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedTab == 0
                                      ? Theme.of(context).primaryColor
                                      : Colors.transparent),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Tue".toUpperCase(),
                                    style:
                                        selectedTab == 0 ? _style : _style2,
                                  ),
                                  Text(
                                    "01",
                                    style:
                                        selectedTab == 0 ? _style : _style2,
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedTab = 0;
                            });
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: selectedTab == 1
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Wed".toUpperCase(),
                                      style: selectedTab == 1 ? _style : _style2,
                                    ),
                                    Text(
                                      "02",
                                      style: selectedTab == 1 ? _style : _style2,
                                    )
                                  ],
                                ),
                              ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedTab = 1;
                            });
                          },
                        ),
                        InkWell(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedTab == 2
                                      ? Theme.of(context).primaryColor
                                      : Colors.transparent),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Thu".toUpperCase(),
                                    style: selectedTab == 2 ? _style : _style2,
                                  ),
                                  Text(
                                    "03",
                                    style: selectedTab == 2 ? _style : _style2,
                                  )
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              selectedTab = 2;
                            });
                          },
                        )
                      ],
                    ),
                  )),
              VerticalDivider(
                width: 2,
                indent: 4,
                endIndent: 8,
              ),
              _buildContent(selectedTab, isMap)
            ],
          ),
        ))
      ],
    );
  }
}
