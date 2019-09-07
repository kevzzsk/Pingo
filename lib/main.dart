import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pingu/model/user.dart';
import 'package:pingu/route_gen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pingu',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Pingu"),
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            DrawerHeader(
              child: Text("Menu"),
            ),
            ListTile(
              title: Text("item1"),
              onTap: () {},
            ),
            ListTile(
              title: Text("item2"),
              onTap: () {},
            ),
            ListTile(
              title: Text("item3"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/login', ModalRoute.withName('/'),
                  arguments: User());
            },
          ),
        ),
      ),
    );
  }
}
