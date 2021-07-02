import 'dart:io';

import 'package:flutter/material.dart';
import 'package:moxa_shop/widgets/c_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        titleText: 'webview demo',
      ),
      body: WebView(
        initialUrl: 'http://192.168.1.155:8117/africa_leone_web_app/behalf.html',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
