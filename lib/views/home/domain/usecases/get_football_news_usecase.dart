import 'package:dartz/dartz.dart';
import 'package:test_project/core/errors/failuer.dart';
import 'package:test_project/views/home/domain/entities/news_entitie.dart';
import 'package:test_project/views/home/domain/repos/news_repo.dart';

class GetFootballNewsUsecase {
  final NewsRepo newsRepo;

  GetFootballNewsUsecase(this.newsRepo);
  Future<Either<Failure, List<NewsEntity>>> execute() async {
    return await newsRepo.getFootballNews();
  }
}
