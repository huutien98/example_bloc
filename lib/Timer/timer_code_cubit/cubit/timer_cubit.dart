import 'dart:async';

import 'package:example_bloc/Timer/timer_code_cubit/cubit/timer_state.dart';
import 'package:example_bloc/Timer/timer_code_cubit/ticker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<TimerState> {
  final Ticker _ticker;
  static const int? _duration = 60;
  StreamSubscription<int>? _tickerSubscription;

  TimerCubit(this._ticker)
      : super(TimerState(status: TimerStatus.TimerInitial));

  // Future<void> handleTimer() async {
  //   emit(state.copyWith(_duration, TimerStatus.TimerInitial));
  //   _tickerSubscription = _ticker.tick(ticks: state.duration).listen(
  //         (event) {},
  //       );
  //
  // }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
