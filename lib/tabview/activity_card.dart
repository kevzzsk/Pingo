import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String street;
  final String postal;
  final String price;
  final String time;
  final String picture;
  final int category;
  Color priColor;
  Color secColor;

  ActivityCard(
      {this.picture,
      this.postal = "Postal",
      this.price = "Free",
      this.street = "Street",
      this.time = "2",
      this.title = "Sights & Landmark",
      this.category = 0});

  @override
  Widget build(BuildContext context) {
    _chooseIcon(cat) {
      switch (cat) {
        case 0:
          priColor = Color.fromARGB(255, 133, 253, 150);
          secColor = Color.fromARGB(200, 133, 253, 150);
          return Padding(
            padding: const EdgeInsets.only(left: 8, right: 0),
            child: Icon(
              FontAwesomeIcons.running,
              size: 20,
            ),
          );
        case 1:
          priColor = Color.fromARGB(255, 165, 226, 250);
          secColor = Color.fromARGB(200, 165, 226, 250);
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(FontAwesomeIcons.houseDamage, size: 13),
          );
        case 2:
        priColor = Color.fromARGB(255, 255, 255, 163);
        secColor = Color.fromARGB(200, 255, 255, 163);
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.fastfood, size: 16),
          );
        case 3:
        priColor = Color.fromARGB(255, 199, 199, 199);
        secColor = Color.fromARGB(200, 199, 199, 199);
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.home, size: 16),
          );
        default:
          priColor = Color.fromARGB(255, 133, 253, 150);
          secColor = Color.fromARGB(200, 133, 253, 150);
          return Icon(Icons.directions_run, size: 20);
      }
    }
    _getGradient(cat){
      switch (cat) {
        case 0:
          priColor = Color.fromARGB(255, 122, 219, 136);
          secColor = Color.fromARGB(200, 122, 219, 136);
          return [priColor,secColor];
        case 1:
          priColor = Color.fromARGB(255, 165, 226, 250);
          secColor = Color.fromARGB(200, 165, 226, 250);
          return [priColor,secColor];
        case 2:
        priColor = Color.fromARGB(255, 255, 255, 163);
        secColor = Color.fromARGB(200, 255, 255, 163);
          return [priColor,secColor];
        case 3:
        priColor = Color.fromARGB(255, 199, 199, 199);
        secColor = Color.fromARGB(200, 199, 199, 199);
          return [priColor,secColor];
        default:
          priColor = Color.fromARGB(255, 133, 253, 150);
          secColor = Color.fromARGB(200, 133, 253, 150);
          return [priColor,secColor];
      }
    }

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/details');
      },
      child: Padding(
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
                            colors: _getGradient(this.category))),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(2),
                                  child: _chooseIcon(this.category),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      this.title,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
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
                          child: Image.network(this.picture??"https://www.evershine.com/wp-content/uploads/2017/11/60T90-Black.jpg",fit: BoxFit.cover,)
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
                                            color: Colors.grey[600],
                                            fontSize: 12),
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
                                    this.time,
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
      ),
    );
  }
}
