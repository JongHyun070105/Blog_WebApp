import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController webViewController = WebViewController()
    ..loadRequest(Uri.parse('https://jonghyun0105.tistory.com/'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Jong Hyun", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              webViewController.loadRequest(
                Uri.parse('https://jonghyun0105.tistory.com/'),
              );
            },
            icon: Icon(Icons.home, color: Colors.white),
          ),
        ],
      ),
      body: WebViewWidget(controller: webViewController),
    );
  }
}
