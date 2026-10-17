import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/API/news_api.dart';
import '../../data/models/news_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(BuildContext context) => BlocProvider.of(context);

  List<NewsModel> newsList = [];

  void fetchNews() async {
    emit(HomeLoadingState());
    try {
      newsList = await NewsApi.fetchNews();
      emit(HomeSuccessState());
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }
}
