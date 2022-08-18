import 'package:example_bloc/Timer/timer_code_bloc/app.dart';
import 'package:flutter/cupertino.dart';
/*
  - Key Topic
  - Quan sát thay đổi trạng thái với BlocObserver
  - BlocProvider , là 1 flutter widget nó cung cấp bloc cho các lớp con
  - BlocBuilder , Flutter widget xử lý build khi có trạng thái mới trả về
  - Ngăn chặn build lại giao diện với Equatable
  - học cách sử dụng StreamSubcription trong 1 bloc
  - ngăn chặn build lại giao diện vs build when
 */
void main() => runApp(const App());