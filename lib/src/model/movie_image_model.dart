import 'package:netflix_clone/src/model/base_model.dart';
// import 'package:netflix_clone/src/model/belong_to_collection_model.dart';
// import 'package:netflix_clone/src/model/genre_model.dart';
import 'package:netflix_clone/src/model/image_model.dart';
// import 'package:netflix_clone/src/model/production_company_model.dart';
// import 'package:netflix_clone/src/model/production_country_model.dart';
// import 'package:netflix_clone/src/model/spoken_language_model.dart';

class MovieImageModel extends BaseModel {
  int id;
  List<ImageModel> posters = [];
  List<ImageModel> backdrops = [];
  MovieImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    posters = ImageModel.fromJsonArray(parsedJson['posters']);
    backdrops = ImageModel.fromJsonArray(parsedJson['backdrops']);
  }
}
