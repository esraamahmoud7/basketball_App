import 'package:flutter_bloc/flutter_bloc.dart';

import 'couterState.dart';
//extend to cubit
class counterCubit extends Cubit<CounterIncrementStates>
{
  int teamAPoints=0,teamBPoints=0;
  counterCubit(): super(ResetCounter());

  int TeamAIncrement(int buttonNumber)
  {
    teamAPoints+=buttonNumber;
    // out state for UI
    emit(CounterAIncrementStates());
    return teamAPoints;
  }
  int TeamBIncrement(int buttonNumber)
  {
    teamBPoints+=buttonNumber;
    // out state for UI
    emit(CounterBIncrementStates());
    return teamBPoints;
  }
  int Reset()
  {
    teamAPoints=0;
    teamBPoints=0;
    emit(ResetCounter());
    return 0;
  }

}