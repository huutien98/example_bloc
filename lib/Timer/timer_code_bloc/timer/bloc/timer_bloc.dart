import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:example_bloc/Timer/timer_code_bloc/ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  /*
    Xác định trạng thái band đầu của TimerBloc,
    trong trường hợp này :
   */
  final Ticker _ticker;
  static const int _duration = 60;
  // tạo biến đếm với thời gian là 60s
  StreamSubscription<int>? _tickerSubscription;
  // tạo đăng ký 1 StreamSubcription<int> với biến là kiểu int
  /*
   - A subscription on events from a [Stream].
   - When you listen on a [Stream] using [Stream.listen]
   - a [StreamSubscription] object is returned.
   - The subscription provides events to the listener
   - and holds the callbacks used to handle the events.
   - The subscription can also be used to unsubscribe from the events,
   - or to temporarily pause the events from the stream.
*********
   - đăng ký các sự kiện từ 1 luồng
   - bạn có thể lắng nghe từ 1 string bằng Stram.listen 1 đối tượng [StreamSubcription] sẽ được trả về
   - đăng ký cung cấp các sự kiện cho người nghe và giữ các lệnh gọi lại để xử lý các sự kiện
   - subscription cũng có thể dùng để huỷ sự kiện đã đăng ký
   - hoặc để tạm dừng
   */

  TimerBloc({required Ticker ticker}): _ticker = ticker, super(const TimerInitial(_duration)) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<TimerTicked>(_onTicked);
  }
  // khởi tạo Ticker cùng với constructor của TimerBLoc

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(TimerTicked(duration: duration)));
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause();
      emit(TimerRunPause(state.duration));
    }
  }

  void _onResumed(TimerResumed resume, Emitter<TimerState> emit) {
    if (state is TimerRunPause) {
      _tickerSubscription?.resume();
      emit(TimerRunInProgress(state.duration));
    }
  }

  void _onReset(TimerReset event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(const TimerInitial(_duration));
  }

  void _onTicked(TimerTicked event, Emitter<TimerState> emit) {
    emit(
      event.duration > 0
          ? TimerRunInProgress(event.duration)
          : const TimerRunComplete(),
    );
  }
}
