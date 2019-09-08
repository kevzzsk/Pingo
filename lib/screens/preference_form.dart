import 'package:flutter/material.dart';
import 'package:pingu/screens/groupform/location.dart';
import 'package:pingu/screens/groupform/group_size.dart';


class PreferenceFormOne extends StatefulWidget{
  @override
  _PreferenceFormStateOne createState() => _PreferenceFormStateOne();
}

class _PreferenceFormStateOne extends State<PreferenceFormOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Pingo!"),
        ),
        body: new Location()
    );
  }
}

class PerferenceFormTwo extends StatefulWidget{
  @override
  _PerferenceFormStateTwo createState() => _PerferenceFormStateTwo();
}

class _PerferenceFormStateTwo extends State<PerferenceFormTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text("Pingo!"),
        ), 
        body: new GroupSize()
    );
  }
}