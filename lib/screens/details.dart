import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pingu/util/mockdata/sub_places.dart';



class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  RangeValues _values = RangeValues(0.3, 0.7);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: <Widget>[

              SizedBox(height: 10),

              Container(
                height: 240,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "${subPlaces[0]["img"]}",
                        height: 240,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Positioned(
                      right: -10.0,
                      bottom: 3.0,
                      child: RawMaterialButton(
                        onPressed: (){},
                        fillColor: Colors.white,
                        shape: CircleBorder(),
                        elevation: 4.0,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Feather.getIconData("heart"),
                            color: Colors.red,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Text(
                "${subPlaces[0]["name"]}",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Text(
                    "${subPlaces[0]["address"]}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text("hello")
                    )
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.grey.withOpacity(0.7),
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "${subPlaces[0]["description"]}",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            onPressed: () {},
                            child: const Text(
                              'View Website',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            onPressed: () {},
                            child: const Text(
                              'Reviews',
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ]
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Activity Details",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.grey.withOpacity(0.7),
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "Day 1, Sat 07 Sep 2019",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Approx. Cost: ",
                                  style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "SGD 38/pax",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )
                        ]
                      ),
                      RangeSlider(
                        values: _values,
                        min: 0,
                        max: 100,
                        onChanged: (RangeValues values) {
                          setState(() {
                            if (values.end - values.start >= 20) {
                              _values = values;
                            } else {
                              if (_values.start == values.start) {
                                _values = RangeValues(_values.start, _values.start + 50);
                              } else {
                                _values = RangeValues(_values.end - 20, _values.end);
                              }
                            }
                          });
                        }
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Comments",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.grey.withOpacity(0.7),
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        height: 80,
                        color: Colors.white,
                        child: Row ( 
                          children : <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.brown.shade800,
                              child: Text('AH'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  width: 250,
                                  child: Text(
                                    "Name",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 250,
                                  child: Text(
                                    "We need to remember to book the ticket beforehand",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                )
                              ]
                            )
                          ]
                        ),
                      ),
                    ]
                  )
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Photos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: subPlaces.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map place = subPlaces.reversed.toList()[index];

                    return Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context){
                                return Details();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "${place["img"]}",
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned (
                                top: 50,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 50,
                                  color: Colors.black.withOpacity(0.3),
                                  child: Text(
                                    "Zoo",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}