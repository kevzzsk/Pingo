import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pingu/model/item.dart';

class IdeaCard2 extends StatefulWidget {
  final Item item;

  IdeaCard2({this.item});

  @override
  _IdeaCard2State createState() => _IdeaCard2State();
}

class _IdeaCard2State extends State<IdeaCard2> with TickerProviderStateMixin {
  Color _color;
  bool _resized = false;
  Color priColor;
  Color secColor;

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
  @override
  Widget build(BuildContext context) {
    _chooseIcon(cat) {
      switch (cat) {
        case 0:
          return Padding(
            padding: const EdgeInsets.only(left: 8, right: 0),
            child: Icon(
              FontAwesomeIcons.running,
              size: 20,
            ),
          );
        case 1:
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(FontAwesomeIcons.houseDamage, size: 13),
          );
        case 2:
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Icon(Icons.fastfood, size: 16),
          );
        default:
          return Icon(Icons.directions_run, size: 20);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 130,
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
                          colors: 
                        _getGradient(this.widget.item.category)
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(2),
                                child: _chooseIcon(this.widget.item.category),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  this.widget.item.title.toUpperCase(),
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
                          padding: const EdgeInsets.only(
                              left: 10, top: 10, right: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                this.widget.item.description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                    color: Colors.grey[600], fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.black,
                        child: Image.network(
                          this.widget.item.picture,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                this.widget.item.price.toLowerCase() == "free"
                                    ? "FREE"
                                    : "\$" + this.widget.item.price + "/pax",
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
                            this.widget.item.time.toString() + "h",
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 12),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 2,bottom: 2),
                        child: AnimatedSize(
                          duration: new Duration(seconds: 1),
                          curve: Curves.bounceInOut,
                          vsync: this,
                          child: GestureDetector(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: _resized? Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border,color: Colors.red,)
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (_resized) {
                                  _resized = false;
                                } else {
                                  _resized = true;
                                }
                              });
                            },
                          ),
                        ),
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
