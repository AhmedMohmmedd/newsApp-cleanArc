import 'package:test_project/core/errors/error_masseage_model.dart';
import 'package:test_project/core/errors/failuer.dart';
import 'package:test_project/views/home/data/models/news_model.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/utlis/api_constants.dart';

abstract class NewsRmoteDataSource {
  Future<List<NewsModel>> getFootballNews();
}

class NewsRmoteDataSourceImpl extends NewsRmoteDataSource {
  @override
  Future<List<NewsModel>> getFootballNews() async {
    final response = await Dio().get(
        '${ApiConstants.bassUrl}top-headlines?country=${ApiConstants.countrieName}&${ApiConstants.footballNewsEndPoint}&apiKey=${ApiConstants.apiKey}');
    // 'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=dc65dcb11e8f458db0c15d3ef9e1ea0a');

    if (response.statusCode == 200) {
      return List<NewsModel>.from((response.data['articles'] as List)
          .map((e) => NewsModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
