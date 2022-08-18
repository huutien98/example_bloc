import 'package:example_bloc/Counter/counter_code_cubit/counter/view/counter_page.dart';
import 'package:flutter/material.dart';

/*
CounterApp will be a MaterialApp and is specifying the home as CounterPage.
- counterApp sẽ là 1 materialApp và sẽ chỉ định home là CounterPage
 */

class CounterApp extends MaterialApp {
  CounterApp({Key? key}) : super(home: CounterPage());
}

/*
  Note: We are extending MaterialApp because CounterApp is a MaterialApp.
   In most cases, we're going to be creating StatelessWidget or StatefulWidget
    instances and composing widgets in build but in this case there are no widgets
    to compose so it's simpler to just extend MaterialApp.

  Note : chúng ta mở rộng MaterialApp bởi vì CounterApp là 1 MaterialApp .
   trong 1 số trường hợp chúng ta tiến hành tạo StatelessWidget hoặc SatefulWidget
   và tiến hành composing widget trong bản build nhưng trong trường hợp này bọn tao ko dàn xếp widget làm j cả vì nó đơn giản ok?
 */
