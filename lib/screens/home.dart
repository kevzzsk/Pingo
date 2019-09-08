import 'package:flutter/material.dart';
import 'package:pingu/widgets/pop_up.dart';


class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        alignment: Alignment.bottomRight,
        child: TargetWidget()
      )
    );
  }
}