export 'cubit/counter_cubit.dart';
export 'view/counter_view.dart';

/*
  That's it! We've separated the presentation layer from the business logic layer.
  The CounterView has no idea what happens when a user presses a button;
  it just notifies the CounterCubit. Furthermore,
  the CounterCubit has no idea what is happening with the state (counter value);
  it's simply emitting new states in response to the methods being called.

  -

 */