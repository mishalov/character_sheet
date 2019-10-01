import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  @override
  AppState get initialState => InitialAppState("Лист персонажа DnD-5e");

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    if (event is ChangeLabel) {
      yield InitialAppState(event.label);
    }
  }
}
