/*
  Key Topics:
  - quan sát thay đổi trạng thái với BlocObserver.
  - BlocProvider, cung cấp một khối cho các lớp con.
  - BlocBuilder, Flutter widget xử lý xây dựng ui để phản ứng với các trạng thái mới
  - Sử dụng Cubit thay vì Bloc, có điều j khác nhau
  - thêm các sự kiện với context.read
 */

import 'package:example_bloc/Counter/counter_code_cubit/app.dart';
import 'package:example_bloc/Counter/counter_code_cubit/counter_observer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(CounterApp());
}
