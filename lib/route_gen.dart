import 'package:flutter/material.dart';
import 'package:pingu/itinerary_page.dart';
import 'package:pingu/login/login_screen.dart';
import 'package:pingu/personal_selection.dart';
import 'package:pingu/screens/details.dart';
import 'main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context)=> ItineraryPage());
      case '/login':
        return MaterialPageRoute(builder: (context)=> LoginScreen(user: args,));
      case '/splash':
        return MaterialPageRoute(builder: (context)=> Container());
      case '/itinerary':
        return MaterialPageRoute(builder: (context)=> ItineraryPage());
      case '/details':
        return MaterialPageRoute(builder: (context)=> Details());
      case'/personal':
        return MaterialPageRoute(builder: (context)=> PersonalSelection());
      
      default: // display error route
        return _errorRoute();
    }
  }
}


Route<dynamic> _errorRoute(){
  return MaterialPageRoute(builder: (context)=> Scaffold( body: Center(child: Text('ERROR ROUTE!'),),));
}