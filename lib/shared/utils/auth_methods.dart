import 'dart:developer';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/shared/models/User.dart';
import 'package:instagram_clone/shared/utils/storage_methods.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // sign up with email and password
  Future<String> signupUser({
    required String email,
    required String password,
    required String username,
    required String bio,
    required Uint8List? file,
  }) async {
    String res = 'Some error occured';
    if (email.isNotEmpty &&
        password.isNotEmpty &&
        username.isNotEmpty &&
        file != null) {
      try {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        String photoUrl = await StorageMethods()
            .uploadImageToFirebase(file: file, folder: 'userProfileImages');

        // add user to firebase
        if (user.user!.uid.isNotEmpty) {
          UserModel userData = UserModel(
            uid: user.user!.uid,
            username: username,
            bio: bio,
            photoUrl: photoUrl,
            email: email,
            followers: [],
            following: [],
          );
          await _db
              .collection('users')
              .doc(user.user!.uid)
              .set(userData.toJson());
          res = 'success';
        }
      } on FirebaseAuthException catch (err) {
        if (err.code == 'weak-password') {
          res = 'The password provided is too weak.';
        } else if (err.code == 'email-already-in-use') {
          res = 'The account already exists for that email.';
        } else if (err.code == 'invalid-email') {
          res = 'The email address is badly formatted.';
        } else {
          res = err.code;
        }
      } catch (e) {
        res = e.toString();
        log(e.toString());
      }
    } else {
      res = 'All fields are required';
    }
    return res;
  }

  // sign in with email and password

  Future<String> signinUser({
    required String email,
    required String password,
  }) async {
    String res = 'Some error occured';
    if (email.isNotEmpty && password.isNotEmpty) {
      try {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'success';
      } on FirebaseAuthException catch (err) {
        if (err.code == 'wrong-password') {
          res = 'The password is invalid.';
        } else if (err.code == 'user-not-found') {
          res =
              'There is no user record corresponding to this identifier. The user may have been deleted.';
        } else if (err.code == 'user-disabled') {
          res = 'The user account has been disabled by an administrator.';
        } else {
          res = err.code;
        }
      } catch (e) {
        res = e.toString();
        log(e.toString());
      }
    } else {
      res = 'All fields are required';
    }
    return res;
  }
}
