/*
We’ll start off by defining the TimerStates which our TimerBloc can be in.

Our TimerBloc state can be one of the following:

TimerInitial — ready to start counting down from the specified duration.
TimerRunInProgress — actively counting down from the specified duration.
TimerRunPause — paused at some remaining duration.
TimerRunComplete — completed with a remaining duration of 0.
Each of these states will have an implication on the user interface and actions that the user can perform. For example:

if the state is TimerInitial the user will be able to start the timer.
if the state is TimerRunInProgress the user will be able to pause and reset the timer as well as see the remaining duration.
if the state is TimerRunPause the user will be able to resume the timer and reset the timer.
if the state is TimerRunComplete the user will be able to reset the timer.
In order to keep all of our bloc files together, let’s create a bloc directory with bloc/timer_state.dart.

--
  Chúng ta sẽ định nghĩa TimerState mà TimerBloc có thể ở trong đó
  - trạng thái TimerBloc của chúng ta gồm như sau
  TimerInitial -
  TimerRunInProgress -
  TimerRunPause -
  TimerRunComplete -
- mỗi hàm như này sẽ có ý nghĩa về giao diện người dùng và các hành động mà người dùng có thể thực hiện
  - nếu state là TimerInitial người dùng sẽ có thể bắt đầu đếm
  - nếu state là TimerRunInProgress người dùng sẽ có thể dừng lại và reset thời gian như ...
  - .....
 */
part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;
/*
  - bước 1 tạo abstract class kế thừa Equatable
  tạo bản thiết kế chung cho các state
  gồm có thuộc tính duration

 */
  @override
  List<Object> get props => [duration];
}

class TimerInitial extends TimerState {
  const TimerInitial(duration) : super(duration);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

class TimerRunPause extends TimerState {
  const TimerRunPause(duration) : super(duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(duration) : super(duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}

/*
  Note that all of the TimerStates extend the abstract base class TimerState which has a duration property.
  This is because no matter what state our TimerBloc is in,
  we want to know how much time is remaining. Additionally,
  TimerState extends Equatable to optimize our code by ensuring that our app does not trigger rebuilds if the same state occurs.

  - chú ý rằng tất cả các TimerStates mở rộng từ abs base chúng đều có thuộc tính thời gian .
  bởi vì bất kì trạng thái nào của chúng đều có , bọn tao muốn biết còn bao nhiêu thời gian còn lại,
  ngoài ra timerState mở rộng Equatable để tối ưu code để đảm bảo app của chúng ra không rebuild nếu không thay đổi state

 */
