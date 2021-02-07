import './MarvelThumbnailModel.dart';

class MarvelResultModel {
  final String id;
  final String title;
  final String description;
  final int pageCount;
  final String format;
  final MarvelThumbnailModel thumbnail;

  MarvelResultModel(
      {this.id,
      this.title,
      this.description,
      this.pageCount,
      this.format,
      this.thumbnail});
}
