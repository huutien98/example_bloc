import 'package:equatable/equatable.dart';

class TimerState extends Equatable {
  final int? duration;
  final TimerStatus status;

  TimerState({this.duration, this.status = TimerStatus.TimerInitial});

  TimerState copyWith({int? duration, TimerStatus? status}) =>
      TimerState(
          status: status ?? this.status,
          duration: duration ?? this.duration);

  @override
  List<Object?> get props => [];
}

enum TimerStatus {
  TimerInitial,
  TimerRunPause,
  TimerRunInProgress,
  TimerRunComplete
}
