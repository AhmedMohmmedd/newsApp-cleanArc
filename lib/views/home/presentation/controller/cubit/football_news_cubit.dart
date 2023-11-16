import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_project/views/home/data/data_source/news_remote_db.dart';
import 'package:test_project/views/home/domain/entities/news_entitie.dart';
import 'package:test_project/views/home/domain/usecases/get_football_news_usecase.dart';

part 'football_news_state.dart';

class FootballNewsCubit extends Cubit<FootballNewsState> {
  FootballNewsCubit(this.getFootballNewsUsecase) : super(FootballNewsInitial());

  final GetFootballNewsUsecase getFootballNewsUsecase;

  Future<void> getFootballNews() async {
    emit(FootballNewsLoding());
    var resulte = await getFootballNewsUsecase.execute();
    resulte.fold(
      (faliure) {
        emit(FootballNewsFaluier(faliure.message));
      },
      (news) {
        emit(FootballNewsSuccess(news));
      },
    );
  }
}
