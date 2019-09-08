import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://www.marinabaysands.com/content/dam/singapore/marinabaysands/master/main/home/environmental-sustainability/Sustainability%20Website%20Refreshmbs_500x375.jpg"),
          fit: BoxFit.cover
        ) 
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Who Is Going?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar1.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/avatar2.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),color: Theme.of(context).primaryColor,
                    ),
                    child: Row(
                      children: <Widget>[Icon(Icons.add,color: Colors.white,), Text("Invite People",style: TextStyle(color: Colors.white),)],
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:4.0),
              child: Text("Group's Budget",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top:4.0),
              child: Text("2000 SGD",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),),
            ),
            Expanded(child: Container(),),
            ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                          child: Container(
                  color: Colors.black.withOpacity(0.8),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: <Widget>[
                        Text("Travel Tips",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text(
                            "Singapore, an island city-state off southern Malaysia, is a global financial center with a tropical climate and multicultural population. Its colonial core centers on the Padang, a cricket field since the 1830s and now flanked by grand buildings such as City Hall, with its 18 Corinthian columns.",style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
