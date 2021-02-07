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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/NoInternet.png',
              width: double.infinity,
              height: 150,
              fit: BoxFit.fitHeight,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "No Internet connection",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/", (route) => false);
              },
              child: Text(
                "Try again...",
                style: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
