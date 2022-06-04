import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/shared/constant/value.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > SCREEN_WIDTH) {
          // web screen
          return webScreenLayout;
        } else {
          // mobile screen
          return mobileScreenLayout;
        }
      },
    );
  }
} 
