import 'package:flutter/material.dart';
import 'package:pingu/tabview/activity_card.dart';

class ActivityDate extends StatelessWidget {
  int index;
  String date;
  String days;
  List<ActivityCard> activities = [];
  Function callbackfn;
  TextStyle _style = TextStyle(color: Colors.white,fontWeight: FontWeight.bold);
  ActivityDate({this.date,this.days,this.activities,this.index});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          height: 50,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.blueAccent),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text(this.date.toUpperCase(),style:_style,), Text(this.days,style: _style,)],
          ),
        ),
      ),
      onTap: (){
        callbackfn(this.index);
      },
    );
  }
}
