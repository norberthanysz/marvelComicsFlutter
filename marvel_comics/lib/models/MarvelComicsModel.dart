import './MarvelDataModel.dart';

class MarvelComicsModel {
  final int code;
  final MarvelDataModel data;

  MarvelComicsModel(this.code, this.data);

  MarvelComicsModel.fromJson(Map<String, dynamic> json)
      : code = int.parse(json['code'].toString()),
        data = MarvelDataModel.fromJson(json['data']);
}
