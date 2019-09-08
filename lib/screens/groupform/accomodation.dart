import 'package:flutter/material.dart';

class Accomodation extends StatefulWidget{
  @override
  _AccomodationState createState() => _AccomodationState();
}


class _AccomodationState extends State<Accomodation> {
  // List<Color> _colors = [
  //   Colors.transparent,
  //   Colors.lightGreen

  // ];

  // int _currentIndex = 0;
  // this.state = {
  //     _currentIndex: false
  //   }

  // _onChanged() { //update with a new color when the user taps button
  //   int _colorCount = _colors.length;

  //   setState(prevState =>({
  //     _currentIndex = !prevState._currentIndex
  //   });

  // }
  List<String> itemList = [
    "hotel",
    "aircon",
    "separate bedrooms",
    "heater",
    "washing machine",
    "wifi",
    "gym",
    "bathtub"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Pingo!"),
      ),
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://img.jakpost.net/c/2019/03/19/2019_03_19_67991_1552969698._large.jpg'),
          fit: BoxFit.cover
          ) ,
        ),
        child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              "Accomodation",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container (
            child: Expanded(
              child: GridView(
                padding: const EdgeInsets.all(30.0),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                children: itemList.map((res) {
                  return Card(
                    margin: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        child: Text(
                          res,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // onPressed: _onChanged,
                        // color: _colors[_currentIndex],
                      ),
                    ),
                  );
                }).toList(),
            ),
            ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 30.0, bottom: 50.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
              onPressed: () {
                Navigator.pushNamed(context, '/personal');
              },
              splashColor: Colors.yellow,
              color: Theme.of(context).primaryColor,
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}