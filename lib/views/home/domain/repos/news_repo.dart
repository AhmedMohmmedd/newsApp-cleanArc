import 'package:dartz/dartz.dart';
import 'package:test_project/views/home/domain/entities/news_entitie.dart';

import '../../../../core/errors/failuer.dart';

abstract class NewsRepo{
  Future<Either<Failure ,List<NewsEntity>>> getFootballNews();
}