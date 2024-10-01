import 'package:bloc/bloc.dart';
import 'package:points_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterTeamAIncremmentState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void resetPoints() {
    teamAPoints == 0 ? true : teamAPoints = 0;

    teamBPoints == 0 ? false : teamBPoints = 0;
  }

  void TeamIncrementPoints({required String team, required int numPoints}) {
    if (team == 'A') {
      teamAPoints += numPoints;
      emit(CounterTeamAIncremmentState());
    } else {
      teamBPoints += numPoints;
      emit(CounterTeamAIncremmentState());
    }
  }
}
