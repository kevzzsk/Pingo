import 'package:flutter/material.dart';

class LogScreen extends StatelessWidget {

  TextStyle nameStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.bold);
  TextStyle normalStyle = TextStyle(fontSize: 14);
  TextStyle tintedStyle = TextStyle(fontSize: 14,color: Colors.lightBlue);
  TextStyle stampStyle = TextStyle(fontSize: 8);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
                child: CircleAvatar(backgroundImage: AssetImage('assets/avatar1.jpg'),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Elon",style: nameStyle,),
                    Text("Commented on River Safari",style:normalStyle ,),
                    Text("Day 1, 10:00AM-12:00PM",style:tintedStyle),
                    Text("07/09/19 08:04pm",style: stampStyle,),
                    SizedBox(height: 10,),
                    Text("Added new Food/Drinks, Katong Laksa",style:normalStyle ,),
                    Text("Day 1, 02:30PM-03:00PM",style:tintedStyle),
                    Text("07/09/19 08:10pm",style: stampStyle,),
                  ],
                ),
              )
            ],

          ),
        ),
        Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
                child: CircleAvatar(backgroundImage: AssetImage('assets/avatar2.jpg'),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("John",style: nameStyle,),
                    Text("Changed Transport To GRAB",style:normalStyle ,),
                    Text("Day 1, 11:00AM-11:30AM",style:tintedStyle),
                    Text("07/09/19 08:11pm",style: stampStyle,),
                    SizedBox(height: 10,),
                    Text("Added new Food/Drinks, Chicken Rice",style:normalStyle ,),
                    Text("Day 1, 06:00PM-06:40PM",style:tintedStyle),
                    Text("07/09/19 08:15pm",style: stampStyle,),
                  ],
                ),
              )
            ],

          ),
        )
      ],
    );
  }
}