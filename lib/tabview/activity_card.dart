import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String street;
  final String postal;
  final String price;
  final String time;
  final String picture;

  ActivityCard(
      {this.picture,
      this.postal = "Postal",
      this.price = "Free",
      this.street = "Street",
      this.time = "2",
      this.title = "Sights & Landmark"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 120,
        width: 200,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                        Color.fromARGB(255, 255, 110, 82),
                        Color.fromARGB(200, 255, 110, 82)
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  this.title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right,
                            size: 20, color: Colors.grey[700])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                this.street,
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 13),
                              ),
                              Text(
                                this.postal,
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 120,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 5, bottom: 5),
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.coins,
                                      size: 12,
                                      color: Colors.grey[600],
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      this.price,
                                      style: TextStyle(
                                          color: Colors.grey[600], fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(FontAwesomeIcons.clock,
                                    size: 12, color: Colors.grey[600]),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "2h",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.chat_bubble_outline,
                            size: 12, color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
