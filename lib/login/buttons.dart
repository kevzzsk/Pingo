import './login_bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pingu/model/user.dart';



class LoginButton extends StatelessWidget {

  final VoidCallback _onPressed;

  LoginButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      onPressed: _onPressed,
      child: Text('Login'),
    );
  }
}


class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      icon: Icon(FontAwesomeIcons.google,color: Colors.white,),
      label: Text('Sign in With google',style: TextStyle(color: Colors.white),),
      color: Colors.redAccent,
      onPressed: (){
        //BlocProvider.of<LoginBloc>(context).dispatch();
      },
    );
  }
}


class CreateAccountButton extends StatelessWidget {
  final User _user;

  CreateAccountButton({Key key, @required User user})
      : assert(user != null),
        _user = user,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Create an Account'),
      onPressed: (){
      },
    );
  }
}