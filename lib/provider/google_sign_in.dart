import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'dart:convert';

import 'package:google_sign_in_flutter/user_info_model.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  UserInfoModel? userInfoModel;

  // Future googleLogin() async {
  //   try {
  //     final googleUser = await googleSignIn.signIn();
  //     if (googleUser == null) return;
  //     _user = googleUser;
  //     final googleAuth = await googleUser.authentication;
  //
  //     final credential = GoogleAuthProvider.credential(
  //       idToken: googleAuth.idToken,
  //       accessToken: googleAuth.accessToken,
  //     );
  //
  //     try {
  //       await FirebaseAuth.instance.signInWithCredential(credential);
  //     } catch (e) {
  //       print(e.toString());
  //     }
  //
  //   } catch (e) {
  //     print(e.toString());
  //   }
  //   notifyListeners(); // to update ui
  // }

  Future<UserInfoModel?>googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return null;
      _user = googleUser;
      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      // try {
      //   await FirebaseAuth.instance.signInWithCredential(credential);
      // } catch (e) {
      //   print(e.toString());
      // }

      userInfoModel = UserInfoModel(_user?.displayName, _user?.email, _user?.photoUrl, googleAuth.idToken , googleAuth.accessToken);

    } catch (e) {
      print(e.toString());
    }

    return userInfoModel;
   // to update ui
  }



  Future logout() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
