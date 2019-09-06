import 'package:flutter/material.dart';
import 'package:pingu/login/login_screen.dart';
import 'main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context)=> HomePage());
      case '/login':
        return MaterialPageRoute(builder: (context)=> LoginScreen(user: args,));
      case '/splash':
        return MaterialPageRoute(builder: (context)=> Container());
      
      default: // display error route
        return _errorRoute();
    }
  }
}


Route<dynamic> _errorRoute(){
  return MaterialPageRoute(builder: (context)=> Scaffold( body: Center(child: Text('ERROR ROUTE!'),),));
}