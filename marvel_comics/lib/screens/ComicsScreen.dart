import 'package:flutter/material.dart';
import 'package:marvel_comics/models/MarvelResultModel.dart';
import 'package:marvel_comics/models/MarvelThumbnailModel.dart';
import 'package:marvel_comics/widgets/ComicWidget.dart';

class ComicsScreen extends StatelessWidget {
  final List<MarvelResultModel> comics = [
    MarvelResultModel(
        id: "1",
        title: "TestComic",
        description: "asdas dasdasdasdasda da da da dada dada da adaasdas",
        pageCount: 125,
        format: "comic",
        thumbnail: MarvelThumbnailModel(
            path:
                "https://image.api.playstation.com/vulcan/img/cfn/11307RSOY0YPjr2OSOyHwixkMPLtwugfbK0qJ59Su4vVYEnYgoTQKZ2nVrUr9RAo8--DOk45lw0-7rUo2O5hJVg4Te4gV6RE",
            ext: "png"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Marvel Comics"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: comics.length,
        itemBuilder: (ctx, i) => ComicWidget(comics[i]),
      ),
    );
  }
}
