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
        "09:00am",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "River Safari",
      street: "80 Mandai Lake Rd,",
      postal: "Singapore 729826",
      price: "\$34/pax",
      time: "2h",
      category: 0,
      picture: "https://dunujclut7631.cloudfront.net/images/09010000ef0ycu2yq8",
    ),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "11:00am",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "11:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
        title: "Katong Laksa",
        street: "51 E Coast Road",
        postal: "921312",
        time: "2h",
        price: "\$9/pax",
        category: 2,
        picture: "https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_720,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/utwmm1yfqovr8xdss9ge/.jpg",),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "01:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "02:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "Botanic Garden",
      street: "1 Clony Road",
      postal: "821226",
      time: "1.5h",
      price: "Free",
      category: 1,
      picture: "https://www.visitsingapore.com/see-do-singapore/nature-wildlife/parks-gardens/singapore-botanic-gardens/_jcr_content/par-carousel/carousel_detailpage/carousel/item_2.thumbnail.carousel-img.740.416.jpg",
    ),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "03:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "04:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "Universal Studios Singapore",
      street: "8 Sentosa Gateway,",
      postal: "Singapore 098269",
      time: "3h",
      price: "\$79/pax",
      category: 0,
      picture: "https://dqzrr9k4bjpzk.cloudfront.net/images/17215225/1072857027.jpg",
    ),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "07:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "07:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "LAVO Italian Restaurant And Rooftop Bar",
      street: "10 Bayfront Ave, tower 1,",
      postal: "Singapore 018956",
      time: "1h",
      price: "\$60/pax",
      category: 2,
      picture: "https://www.marinabaysands.com/content/dam/singapore/marinabaysands/master/main/home/restaurants/italian/LAVO/-LAVO-Night-View-Photo-Shoot_1000x575.jpg",
    ),Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "08:30pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityTravel(),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "9:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "GARDENS BY THE BAY",
      street: "18 Marina Gardens Dr",
      postal: "Singapore 018953",
      time: "2h",
      price: "\$28/pax",
      category: 2,
      picture: "https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_720,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/b26c5529-Gardens-by-the-Bay/GardensbytheBayTicketinSingapore(DirectEntry).jpg",
    ),
    Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        "11:00pm",
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
    ),
    ActivityCard(
      title: "ACCOMMODATION",
      street: "3 River Valley Rd,",
      postal: "Singapore 179024",
      time: "-",
      price: "\$89/night",
      category: 3,
      picture: "https://media.nomadicmatt.com/2018/accommodations_04.jpg",
    ),

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
            'assets/Gmaps2.jpg',
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
                        text: TextSpan(children: [
                          TextSpan(text: "SGD 200.00 (", style: infoStyle),
                          TextSpan(text: "+50.00", style: greenStyle),
                          TextSpan(text: ")", style: infoStyle)
                        ]),
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
                                    style: selectedTab == 0 ? _style : _style2,
                                  ),
                                  Text(
                                    "01",
                                    style: selectedTab == 0 ? _style : _style2,
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
        )),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Theme.of(context).primaryColor,
              child: Text(
                "Add Item",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Theme.of(context).primaryColor,
              child: Text(
                "Confirm Plan",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Confirm Purchase"),
                      content: Text("By clicking on yes, we will proceed to book the flights and accommodation reflected on your intinerary. You will be informed of the status via email."),
                      actions: <Widget>[
                        new FlatButton(
                          splashColor: Theme.of(context).primaryColor,
                          textColor: Theme.of(context).primaryColor ,
                          child: Text("NO"),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        ),
                        new RaisedButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Text("YES"),
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        ),

                      ],
                    );
                  }
                );
              },
            ),
          ),
        ])
      ],
    );
  }
}
