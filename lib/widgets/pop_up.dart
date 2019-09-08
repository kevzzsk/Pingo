import 'package:flutter/material.dart';
import 'package:super_tooltip/super_tooltip.dart';
import 'package:pingu/screens/preference_form.dart';
import 'dart:async';

class TargetWidget extends StatefulWidget {
  const TargetWidget({Key key}) : super(key: key);

  @override
  _TargetWidgetState createState() => new _TargetWidgetState();
}

class _TargetWidgetState extends State<TargetWidget> {
  SuperTooltip tooltip;

  Future<bool> _willPopCallback() async {
    // If the tooltip is open we don't pop the page on a backbutton press
    // but close the ToolTip
    if (tooltip.isOpen) {
      tooltip.close();
      return false;
    }
    return true;
  }

  void onTap() async {
    if (tooltip != null && tooltip.isOpen) {
      tooltip.close();
      return;
    }

    // We create the tooltip on the first use
    tooltip = SuperTooltip(
      popupDirection: TooltipDirection.up,
      showCloseButton: ShowCloseButton.outside,
      hasShadow: false,
      content: new Material(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Create a group itinerary, and invite your friends! We help you to match and pair activities based on our AI algorithm ",
            style: TextStyle(
              fontSize: 18,
            ),
            softWrap: true,
          ),
        )
      ),
    );

    tooltip.show(context);
    await new Future.delayed(const Duration(seconds: 3));
    Navigator.pushNamed(context, '/location');
    tooltip.close();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _willPopCallback,
      child: new GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColor,
          ),
          child: Row(
            children: <Widget>[
                new Icon(
              Icons.add,
              color: Colors.white,
              size: 35.0,
            ),
            SizedBox(width: 5,),
            Text("Create A New Trip",style: TextStyle(color: Colors.white),)
            ],
                    
          ),
        ),
      ),
    );
  }
}