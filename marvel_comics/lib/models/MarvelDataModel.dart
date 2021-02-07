import './MarvelResultModel.dart';

class MarvelDataModel {
  final int offset;
  final List<MarvelResultModel> results;

  MarvelDataModel(this.offset, this.results);

  MarvelDataModel.fromJson(Map<String, dynamic> json)
      : offset = int.parse(json['offset'].toString()),
        results = (json['results'] as List)
            .map((result) => MarvelResultModel.fromJson(result))
            .toList();
}
