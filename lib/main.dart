import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:instagram_clone/shared/bloc/bloc_provider_list.dart';
import 'package:instagram_clone/shared/router/router.dart';
import 'package:instagram_clone/shared/theme/apptheme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyAc-82RqFaETsB2bdhE-M2yk-ShNmQdwik",
        appId: "1:1062488779116:web:62870f2b54fe820fa92b49",
        messagingSenderId: "1062488779116",
        projectId: "instagram-app-2022",
        storageBucket: "instagram-app-2022.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
    MultiBlocProvider(
      providers: blocProviderList,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram-clone',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      themeMode: ThemeMode.dark,
      onGenerateRoute: AppRouter().generateRoute,
      builder: EasyLoading.init(),
    );
  }
}
