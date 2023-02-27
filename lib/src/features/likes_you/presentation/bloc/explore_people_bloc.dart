import 'package:bloc/bloc.dart';
import 'package:dating_app/src/features/likes_you/data/data_user_dummy.dart';
import 'package:meta/meta.dart';

import '../../domain/user.dart';

part 'explore_people_event.dart';
part 'explore_people_state.dart';

class ExplorePeopleBloc extends Bloc<ExplorePeopleEvent, ExplorePeopleState> {
  ExplorePeopleBloc() : super(ExplorePeopleInitial()) {
    on<OnExplorePeopleEventCalled>((event, emit) async {
      emit(ExplorePeopleLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(ExplorePeopleLoaded(dataUserDummy));
    });
  }
}
