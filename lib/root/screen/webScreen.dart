// ignore_for_file: unnecessary_import, file_names

import 'package:flutter/material.dart';

class WebRootScreen extends StatefulWidget {
  const WebRootScreen({Key? key}) : super(key: key);

  @override
  State<WebRootScreen> createState() => _WebRootScreenState();
}

class _WebRootScreenState extends State<WebRootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebWebRootScreen'),
      ),
    );
  }
}
