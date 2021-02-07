import 'package:flutter/material.dart';

class NoInternetScreen extends StatelessWidget {
  static const routeName = '/no-internet-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Marvel Comics"),
      ),
      body: Center(
        child: Text("No internet"),
      ),
    );
  }
}
