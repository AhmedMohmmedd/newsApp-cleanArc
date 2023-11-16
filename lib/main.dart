import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_project/core/service_locator.dart';
import 'package:test_project/views/home/data/data_source/news_remote_db.dart';
import 'package:test_project/views/home/data/repos/news_repo_impl.dart';
import 'package:test_project/views/home/domain/repos/news_repo.dart';
import 'package:test_project/views/home/domain/usecases/get_football_news_usecase.dart';
import 'package:test_project/views/home/presentation/controller/cubit/football_news_cubit.dart';

import 'views/home/presentation/screens/home_view.dart';

void main() async {
  runApp(const MyApp());
  // ServicesLocator().init();

  // NewsRmoteDataSource newsRmoteDataSource = NewsRmoteDataSourceImpl();
  // NewsRepo newsRepo = NewsRepoImpl(newsRmoteDataSource: newsRmoteDataSource);
  // final x = await GetFootballNewsUsecase(newsRepo).execute();
  // print(x);
}

/// foootball news api
/// https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=dc65dcb11e8f458db0c15d3ef9e1ea0a
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // NewsRmoteDataSource newsRmoteDataSource = NewsRmoteDataSourceImpl();
    // NewsRepo newsRepo = NewsRepoImpl(newsRmoteDataSource: newsRmoteDataSource);

    return BlocProvider(
      create: (context) => FootballNewsCubit(
        GetFootballNewsUsecase(
          NewsRepoImpl(
            newsRmoteDataSource: NewsRmoteDataSourceImpl(),
          ),
        ),
      )..getFootballNews(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const HomePage(),
      ),
    );
  }
}
