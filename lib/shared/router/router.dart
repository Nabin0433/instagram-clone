// ignore_for_file: unused_import, constant_identifier_names
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/login/login_screen.dart';
import 'package:instagram_clone/root/screen/webScreen.dart';
import 'package:instagram_clone/shared/responsive/responsive.dart';
import 'package:instagram_clone/signup/signup_screen.dart';

import '../../root/screen/mobileScreen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    Object? _arguments = settings.arguments;
    switch (settings.name) {
      case AppRoutes.ROOT:
        return _buildMaterialPageRoute(
          screen: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return const ResponsiveLayout(
                  mobileScreenLayout: MobileRootScreen(),
                  webScreenLayout: WebRootScreen(),
                );
              } else {
                return const LoginScreen();
              }
            },
          ),
        );
      case AppRoutes.LOGIN:
        return _buildMaterialPageRoute(
          screen: const ResponsiveLayout(
            mobileScreenLayout: LoginScreen(),
            webScreenLayout: LoginScreen(),
          ),
        );
      case AppRoutes.SIGNUP:
        return _buildMaterialPageRoute(
          screen: const ResponsiveLayout(
            mobileScreenLayout: SignupScreen(),
            webScreenLayout: SignupScreen(),
          ),
        );

      default:
        return _buildMaterialPageRoute(screen: buildNoRouteWidget(settings));
    }
  }

  MaterialPageRoute<dynamic> _buildMaterialPageRoute({required Widget screen}) {
    return MaterialPageRoute(
      builder: (BuildContext context) => screen,
    );
  }

  Scaffold buildNoRouteWidget(RouteSettings settings) {
    return Scaffold(
      body: Center(
        child: Text('Oops! not found ${settings.name}'),
      ),
    );
  }
}

class AppRoutes {
  static const String ROOT = '/';
  static const String LOGIN = '/login';
  static const String SIGNUP = '/signup';
}
