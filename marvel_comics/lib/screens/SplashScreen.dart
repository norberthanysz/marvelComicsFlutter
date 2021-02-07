import 'package:flutter/material.dart';
import '../widgets/SplashWidget.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marvel Comics"),
      ),
      body: SplashWidget(),
    );
  }
}
