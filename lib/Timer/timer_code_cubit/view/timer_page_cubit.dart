import 'package:example_bloc/Timer/timer_code_cubit/cubit/timer_cubit.dart';
import 'package:example_bloc/Timer/timer_code_cubit/cubit/timer_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerPageCubit extends StatelessWidget {
  const TimerPageCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
    // return BlocProvider(
    //   create: (context) => TimerCubit(),
    //   child: BlocBuilder<TimerCubit,TimerState>(
    //     builder: (context, state) {
    //       switch(state.status){
    //         case TimerStatus.TimerInitial:
    //           break;
    //         case TimerStatus.TimerRunComplete:
    //           break;
    //         case TimerStatus.TimerRunInProgress:
    //           break;
    //         case TimerStatus.TimerRunPause:
    //           break;
    //         default:
    //           return Scaffold();
    //       }
    //       return Scaffold();
    //     },
    //   ),
    // );
  }
}
