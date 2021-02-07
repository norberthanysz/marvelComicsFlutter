import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:marvel_comics/screens/NoInternetScreen.dart';
import 'package:marvel_comics/screens/comicsScreen.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  Future<bool> internetConnectionCheck() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(
        seconds: 5,
      ),
      () => {
        internetConnectionCheck().then(
          (internet) {
            if (internet != null && internet) {
              Navigator.of(context).pushNamed(
                ComicsScreen.routeName,
              );
            } else {
              Navigator.of(context).pushNamed(
                NoInternetScreen.routeName,
              );
            }
          },
        ),
      },
    );

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Image.asset(
          'assets/images/MarvelLogo.png',
          width: double.infinity,
          height: 150,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
