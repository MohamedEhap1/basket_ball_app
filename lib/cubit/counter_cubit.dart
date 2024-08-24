import 'package:basketball_counter_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void resetCounter() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterInitial());
  }

  void incrementTeam(String team, int buttonNumber) {
    if (team == "A") {
      teamAPoints += buttonNumber;
      emit(CounterAIncrement());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrement());
    }
  }
}
