import 'package:example_bloc/Timer/timer_code_cubit/view/timer_page_cubit.dart';

import 'package:flutter/material.dart';

class AppCubit extends StatelessWidget{
  const AppCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Timer_Bloc',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(109, 234, 255, 1),
        colorScheme: const ColorScheme.light(
          secondary: Color.fromARGB(72, 74, 126, 1),
        ),
      ),
      home: const TimerPageCubit(),
    );
  }
}
