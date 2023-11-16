// import 'package:get_it/get_it.dart';
// import 'package:test_project/views/home/data/data_source/news_remote_db.dart';
// import 'package:test_project/views/home/data/repos/news_repo_impl.dart';
// import 'package:test_project/views/home/domain/repos/news_repo.dart';
// import 'package:test_project/views/home/domain/usecases/get_football_news_usecase.dart';
// import 'package:test_project/views/home/presentation/controller/cubit/football_news_cubit.dart';

// var sl = GetIt.instance;

// class ServicesLocator {
//   void init() {
//     /// Bloc
//     sl.registerFactory(() => FootballNewsCubit(sl()));

// /// DATA SOURCE
//     sl.registerLazySingleton<NewsRmoteDataSource>(
//         () => NewsRmoteDataSourceImpl());
//     /// Use Cases
//     sl.registerLazySingleton(() => GetFootballNewsUsecase(sl()));

//     /// Repository
//     sl.registerLazySingleton<NewsRepo>(
//         () => NewsRepoImpl(sl(), newsRmoteDataSource: sl()));

    
//   }
// }