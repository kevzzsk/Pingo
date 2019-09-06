import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pingu/model/user.dart';
import './bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {

  final User _user;

  AuthenticationBloc({@required User user}):_user=user,assert(user != null);

  @override
  AuthenticationState get initialState => Uninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    // TODO: Add Logic
    if (event is AppStarted){
      yield* _mapAppStartedToState();
    } else if (event is LoggedIn){
      yield* _mapLoggedInToState();
    } else if (event is LoggedOut){
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try{
      final isSignedIn = await _user.isSignedIn();
      if (isSignedIn){
        final name = await _user.getUser();
        yield Authenticated(name);
      } else{
        yield Unauthenticated();
      }
    }catch (_){
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState() async*{
    yield Authenticated(await _user.getUser());
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async*{
    yield Unauthenticated();
    _user.signOut();
  }

}
