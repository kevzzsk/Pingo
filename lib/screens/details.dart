import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:pingu/util/mockdata/sub_places.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  RangeValues _values = RangeValues(8, 18);
  TextEditingController textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
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
                  child: Image.network(
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
                    onPressed: () {},
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "${subPlaces[0]["name"]}",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "${subPlaces[0]["address"]}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Image.asset(
                      'assets/Gmaps.jpg',
                      fit: BoxFit.cover,
                    )),
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
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        RaisedButton(
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
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
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          child: const Text(
                            'Reviews',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ])
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
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ]),
                  Padding(
                    padding: EdgeInsets.only(top: 4, left: 8, right: 8),
                    child: Text(
                      "Operating Hours",
                    ),
                  ),
                  RangeSlider(
                      inactiveColor: Colors.grey,
                      activeColor: Theme.of(context).highlightColor,
                      values: _values,
                      min: 0,
                      max: 24,
                      divisions: 24,
                      labels: RangeLabels(
                          _values.start.toStringAsFixed(2).replaceAll(".", ":"),
                          _values.end.toStringAsFixed(2).replaceAll(".", ":")),
                      onChanged: (RangeValues values) {
                        setState(() {
                          if (values.end - values.start >= 1) {
                            _values = values;
                          } else {
                            if (_values.start == values.start) {
                              _values =
                                  RangeValues(_values.start, _values.start + 1);
                            } else {
                              _values =
                                  RangeValues(_values.end - 1, _values.end);
                            }
                          }
                        });
                      }),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 10, left: 2, right: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[Text("00:00"), Text("23:59")],
                    ),
                  )
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
                child: Column(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    height: 80,
                    color: Colors.white,
                    child: Row(children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Text('SG'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: Theme.of(context).primaryColor,
                          controller: textEditingController,
                          decoration: new InputDecoration(
                            hintText: "Enter Comments...",
                            hintStyle: new TextStyle(color: Colors.grey),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.subdirectory_arrow_left),
                              onPressed: (){},
                            )
                          ),
                        ),
                      )
                    ]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    height: 80,
                    color: Colors.white,
                    child: Row(children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Text('AH'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "We need to remember to book the ticket beforehand",
                                overflow: TextOverflow.ellipsis,
                                softWrap: true,
                                maxLines: 3,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              )
                            ]),
                      )
                    ]),
                  ),
                  
                ])),
          ),
          SizedBox(height: 10),
          Text(
            "You Might Also Like...",
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
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Details();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Stack(children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "${place["img"]}",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 55,
                          child: Container(
                              alignment: Alignment.topLeft,
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black.withOpacity(0.5)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "${place["name"]}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ]),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
