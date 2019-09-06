import 'package:firebase_auth/firebase_auth.dart';

class User {
  final FirebaseAuth _firebaseAuth;
  //final GoogleSignIn _googleSignIn;
  String username;
  String email;
  String password;
  String profilePic;

  User(
      {String username,
      String password,
      String profilePic,
      String email,
      FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        password = password,
        username = username,
        profilePic = profilePic,
        email = email;

  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signUp({String email, String password}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    return Future.wait([_firebaseAuth.signOut()]);
  }

  Future<bool> isSignedIn() async {
    final currentUser = await _firebaseAuth.currentUser();
    return currentUser != null;
  }

  Future<String> getUser() async {
    return (await _firebaseAuth.currentUser()).email;
  }
}
