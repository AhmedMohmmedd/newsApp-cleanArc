import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_project/views/home/domain/entities/news_entitie.dart';
import 'package:test_project/views/home/presentation/controller/cubit/football_news_cubit.dart';
import 'package:test_project/views/home/presentation/screens/widgets/news_item.dart';

class NewsListView extends StatefulWidget {
  NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<NewsEntity> news = [];
  final sl = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FootballNewsCubit, FootballNewsState>(
      builder: (context, state) {
        if (state is FootballNewsSuccess) {
          news.addAll(state.news);
          return ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, index) {
              return NewsItem(
                news: news,
                index: index,
              );
            },
          );
        } else if (state is FootballNewsFaluier) {
          return Text(state.errorMaseage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
