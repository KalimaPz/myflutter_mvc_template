import 'package:flutter/foundation.dart';

class AuthController extends ChangeNotifier {
  String username = "";
  String uid = "";


  Future<void> signInWithEmailPassword() async {}
  Future<void> signInWithGoogleAccount() async {}
  Future<void> singInWithFacebook() async {}
}
