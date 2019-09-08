import 'package:flutter/material.dart';
import 'package:pingu/screens/groupform/accomodation.dart';


class GroupBudget extends StatefulWidget{
  @override
  _GroupBudgetState createState() => _GroupBudgetState();
}

class _GroupBudgetState extends State<GroupBudget> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Pingo!"),
      ),
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://www.qantas.com/content/travelinsider/en/explore/asia/indonesia/bali/what-not-to-do-in-bali/_jcr_content/parsysTop/hero.img.full.medium.jpg/1543366401968.jpg'),
          fit: BoxFit.cover
          ) ,
        ),
        child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Text(
              "Group Budget",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 200.0, right: 70.0, left: 70.0, bottom: 40.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 70,
                color: Theme.of(context).primaryColor.withOpacity(0.7),            
                child: TextFormField(
                  textAlign: TextAlign.center,
                  cursorColor: Theme.of(context).primaryColor,
                style: new TextStyle(
                fontSize: 30.0,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              )
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 200.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
              onPressed: () {
                Navigator.pushNamed(context, '/accomodation');
              },
              splashColor: Theme.of(context).primaryColor,
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