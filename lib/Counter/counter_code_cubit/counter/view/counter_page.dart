import 'package:example_bloc/Counter/counter_code_cubit/counter/cubit/counter_cubit.dart';
import 'package:example_bloc/Counter/counter_code_cubit/counter/view/counter_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*
  The CounterPage widget is responsible for creating a CounterCubit (which we will look at next) and providing it to the CounterView.

  CounterPage widget có trách nhiệm khởi tạo 1 counterCubit và cung cấp cho nó CounterView


  Note: It's important to separate or decouple the creation of a Cubit from the consumption
  of a Cubit in order to have code that is much more testable and reusable.

  nó quan trọng cho việc phải tách rời khởi tạo 1 cubit khỏi việc sử dụng 1 cubit để có thể kiểm tra và tái sử dụng nhiều lần
 */

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}
