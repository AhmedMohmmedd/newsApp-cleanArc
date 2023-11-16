import 'package:dartz/dartz.dart';
import 'package:test_project/core/errors/failuer.dart';
import 'package:test_project/views/home/data/data_source/news_remote_db.dart';
import 'package:test_project/views/home/domain/entities/news_entitie.dart';
import 'package:test_project/views/home/domain/repos/news_repo.dart';

import '../../../../core/errors/exceptions.dart';

class NewsRepoImpl extends NewsRepo {
  final NewsRmoteDataSource newsRmoteDataSource;

  NewsRepoImpl({required this.newsRmoteDataSource});
  @override
  Future<Either<Failure, List<NewsEntity>>> getFootballNews() async {
    final result = await newsRmoteDataSource.getFootballNews(); 
    try {
      return right(result);
    } on ServerException catch (failuer) {
      return left(ServerFailure(failuer.errorMessageModel.message));
    }
  }
}
