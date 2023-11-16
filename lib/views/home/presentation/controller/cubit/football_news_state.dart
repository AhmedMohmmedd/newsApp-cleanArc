part of 'football_news_cubit.dart';

sealed class FootballNewsState extends Equatable {
  const FootballNewsState();

  @override
  List<Object> get props => [];
}

final class FootballNewsInitial extends FootballNewsState {}

final class FootballNewsLoding extends FootballNewsState {}

final class FootballNewsSuccess extends FootballNewsState {
    final List<NewsEntity> news;

 const FootballNewsSuccess(this.news);

}

final class FootballNewsFaluier extends FootballNewsState {
  final String errorMaseage;

 const FootballNewsFaluier(this.errorMaseage);
}
