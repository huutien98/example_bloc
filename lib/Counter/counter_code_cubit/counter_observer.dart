/*
BlocObserver
The first thing we're going to take a look at is how to create a BlocObserver which will help us observe all state changes in the application.

- đầu tiên chúng ta tiến hành làm sao để tạo BlocObserver giúp chúng ta quan sát thay đổi trạng thái của ứng dụng
 */

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}

/*
  trong trường hợp này chúng ta ghi đè phương thức onChange để quan sát những sự kiện đang xảy ra
  onChange : hoạt động cho cả cubit và bloc
 */