import 'package:flutter/material.dart';
import 'package:pingu/screens/home.dart';

class CreateEventPage extends StatefulWidget{
  @override
  _CreateEventPageState createState() => _CreateEventPageState();
}

class _CreateEventPageState extends State<CreateEventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Pingu"),
        ),
        body: HomePage(), 
    );
  }
}