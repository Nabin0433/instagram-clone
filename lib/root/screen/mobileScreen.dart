// ignore_for_file: unnecessary_import, file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/shared/cubit/user_cubit.dart';
import 'package:instagram_clone/shared/models/User.dart';
import 'package:instagram_clone/shared/screens/error_screen.dart';
import 'package:instagram_clone/shared/screens/loading_screen.dart';

class MobileRootScreen extends StatefulWidget {
  const MobileRootScreen({Key? key}) : super(key: key);

  @override
  State<MobileRootScreen> createState() => _MobileRootScreenState();
}

class _MobileRootScreenState extends State<MobileRootScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<UserCubit>(context).getUserFromFirebase();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserLoading) {
          return const LoadingScreen();
        } else if (state is UserSuccess) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('mobileRootScreen'),
            ),
            body: Container(
              child: Text(state.user.username),
            ),
          );
        } else {
          return const ErrorScreen();
        }
      },
    );
  }
}
