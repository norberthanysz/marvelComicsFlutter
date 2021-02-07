import 'package:flutter/material.dart';

import './screens/NoInternetScreen.dart';
import './screens/SplashScreen.dart';
import './screens/comicsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel comics',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.white,
      ),
      home: SplashScreen(),
      routes: {
        ComicsScreen.routeName: (context) => ComicsScreen(),
        NoInternetScreen.routeName: (context) => NoInternetScreen(),
      },
    );
  }
}
