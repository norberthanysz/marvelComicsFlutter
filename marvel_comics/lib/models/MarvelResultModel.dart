import './MarvelThumbnailModel.dart';

class MarvelResultModel {
  final int id;
  final String title;
  final String description;
  final int pageCount;
  final String format;
  final MarvelThumbnailModel thumbnail;

  MarvelResultModel(this.id, this.title, this.description, this.pageCount,
      this.format, this.thumbnail);

  MarvelResultModel.fromJson(Map<String, dynamic> json)
      : id = int.parse(json['id'].toString()),
        title = json['title'],
        description = json['description'],
        pageCount = int.parse(json['pageCount'].toString()),
        format = json['format'],
        thumbnail = MarvelThumbnailModel.fromJson(json['thumbnail']);
}
