import 'package:json_annotation/json_annotation.dart';

class MarvelThumbnailModel {
  final String path;
  @JsonKey(name: "extension")
  final String ext;

  String get url {
    return "$path.$ext";
  }

  MarvelThumbnailModel({this.path, this.ext});
}
