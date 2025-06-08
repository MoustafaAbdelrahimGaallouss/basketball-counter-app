import 'package:basketball_coun/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountrtCubit extends Cubit<CounterState> {
  CountrtCubit(super.counterAIncrementState);
  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      // Increment team A points
      teamAPoints += buttonNumber;
      emit(counterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(counterBIncrementState());
    }
  }

  void teamCounterReset({required String team}) {
    if (team == 'A') {
      // Increment team A points
      teamAPoints = 0;
      emit(counterAIncrementState());
    } else {
      teamBPoints = 0;
      emit(counterBIncrementState());
    }
  }
}
