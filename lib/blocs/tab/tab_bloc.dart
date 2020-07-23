import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_todo/blocs/tab/tab.dart';
import 'package:flutter_bloc_todo/models/models.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  @override
  AppTab get initialState => AppTab.todos;

  @override
  Stream<AppTab> mapEventToState(TabEvent event) async* {
    if (event is TabUpdated) {
      yield event.tab;
    }
  }
}
