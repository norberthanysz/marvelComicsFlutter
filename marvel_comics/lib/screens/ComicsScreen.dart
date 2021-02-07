import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/MarvelComicsModel.dart';
import '../widgets/ComicWidget.dart';

class ComicsScreen extends StatefulWidget {
  static const routeName = '/comics-screen';

  @override
  _ComicsScreenState createState() => _ComicsScreenState();
}

class _ComicsScreenState extends State<ComicsScreen> {
  MarvelComicsModel comicsList;

  Future<bool> getComics() async {
    final String baseUrl = "gateway.marvel.com";
    final String endpoint = "/v1/public/comics";
    final Map<String, String> queryParameters = {
      'ts': "1",
      'apikey': "3d3ce5daa8ec0f7c17afc52bb68f15f7",
      'hash': "a45bdb0bf57b06e72ad4c2c5854e2843",
      'limit': "25",
      'orderBy': "-onsaleDate"
    };
    var headers = {'Content-Type': 'application/json'};
    var uri = Uri.https(baseUrl, endpoint, queryParameters);
    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      MarvelComicsModel comics = MarvelComicsModel.fromJson(data);
      setState(
        () {
          comicsList = comics;
        },
      );
    }
    return true;
  }

  @override
  void initState() {
    Future.delayed(Duration.zero).then(
      (_) {
        getComics();
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Marvel Comics"),
      ),
      body: comicsList == null
          ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).primaryColor),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: comicsList.data.results.length,
              itemBuilder: (ctx, i) => ComicWidget(comicsList.data.results[i]),
            ),
    );
  }
}
