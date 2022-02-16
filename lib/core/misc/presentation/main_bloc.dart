import 'package:bloc/bloc.dart';
import 'package:shared_flutter/core/misc/presentation/main_event.dart';
import 'package:shared_flutter/core/misc/presentation/main_state.dart';

class MainBloc<Event extends MainEvent, State extends MainState> extends Bloc<Event, State>{
  MainBloc(State initialState) : super(initialState);

}