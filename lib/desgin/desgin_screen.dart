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
    controller =  WebViewController()..loadRequest(Uri.parse("https://printly.ly/create-your-own-2/?product_id=1657"));

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      centerTitle: true,
      title: Text('Desgin'),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_rounded),
        onPressed: () {            Navigator.pop(context);
        },
      ),
    ),body: WebViewWidget(controller: controller));
  }
}
