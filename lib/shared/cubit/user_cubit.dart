// ignore_for_file: depend_on_referenced_packages
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/shared/models/User.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  getUserFromFirebase() async {
    emit(UserLoading());
    DocumentSnapshot res = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    Map<String, dynamic> data = jsonDecode(jsonEncode(res.data()));
    emit(UserSuccess(user: UserModel.fromMap(data)));
  }
}
