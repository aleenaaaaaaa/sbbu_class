import 'dart:html';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewscreen extends StatefulWidget {
  const webviewscreen({super.key});

  @override
  State<webviewscreen> createState() => _webviewscreenState();
}

class _webviewscreenState extends State<webviewscreen> {
  late final WebViewController controller;
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  @override
  void initState() {
    super.initState();
    print('Andriod info = ${deviceInfoPlugin.androidInfo}');
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(Uri.parse('https://pub.dev/packages/webview_flutter'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview Example'),
      ),
    );
  }
}
