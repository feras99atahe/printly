import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DesginPage extends StatefulWidget {
  const DesginPage({super.key});

  @override
  State<DesginPage> createState() => _DesginPageState();
}

class _DesginPageState extends State<DesginPage> {
 late WebViewController controller;
  @override
  void initState() {
    // TODO: implement initState


    super.initState();
    controller =  WebViewController()..loadRequest(Uri.parse("https://printly.ly"));

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: WebViewWidget(controller: controller));
  }
}
