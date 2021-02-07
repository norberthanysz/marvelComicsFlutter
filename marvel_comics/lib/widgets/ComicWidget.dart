import 'package:flutter/material.dart';
import '../models/MarvelResultModel.dart';

class ComicWidget extends StatelessWidget {
  final MarvelResultModel comic;

  ComicWidget(this.comic);

  void selectedComic(BuildContext context) {
    //to do naviggate to detailpage
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedComic(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5.0,
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  child: Image.network(
                    comic.thumbnail.url,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 200,
                    padding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 20.0,
                    ),
                    color: Colors.black54,
                    child: Text(
                      comic.title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.library_books_outlined),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text("${comic.pageCount} pages"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
