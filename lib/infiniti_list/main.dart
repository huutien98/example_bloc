import 'package:example_bloc/infiniti_list/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const App());
}
