import 'package:flutter/material.dart';
import 'package:pingu/itinerary_page.dart';
import 'package:pingu/createEvent_page.dart';
import 'package:pingu/login/login_screen.dart';
import 'package:pingu/screens/groupform/group_size.dart';
import 'package:pingu/screens/groupform/budget.dart';
import 'package:pingu/screens/groupform/location.dart';
import 'package:pingu/screens/groupform/accomodation.dart';
import 'main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context)=> CreateEventPage());
      case '/login':
        return MaterialPageRoute(builder: (context)=> LoginScreen(user: args,));
      case '/splash':
        return MaterialPageRoute(builder: (context)=> Container());
      case '/itinerary':
        return MaterialPageRoute(builder: (context)=> ItineraryPage());
      case '/location':
        return MaterialPageRoute(builder: (context)=> Location());
      case '/groupsize':
        return MaterialPageRoute(builder: (context)=> GroupSize());
      case '/budget':
        return MaterialPageRoute(builder: (context)=> GroupBudget());
      case '/accomodation':
        return MaterialPageRoute(builder: (context)=> Accomodation());
      
      default: // display error route
        return _errorRoute();
    }
  }
}


Route<dynamic> _errorRoute(){
  return MaterialPageRoute(builder: (context)=> Scaffold( body: Center(child: Text('ERROR ROUTE!'),),));
}