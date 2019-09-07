import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityTravel extends StatelessWidget {
  TextStyle textStyle = TextStyle(color: Colors.grey[600], fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: 40,
        width: 200,
        child: Card(
          color: Color.fromARGB(245, 255, 220, 220),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.car,
                          color: Colors.grey[600],
                          size: 12,
                        ),
                        SizedBox(width: 5,),
                        Text("11km/30mins",style: textStyle,),
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.grey[700])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
