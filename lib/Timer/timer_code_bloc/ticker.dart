/*
The ticker will be our data source for the timer application. It will expose a stream of ticks which we can subscribe and react to.
- ticker sẽ là data của chúng ta trong thời gian sử dụng ứng dụng , nó sẽ thể hiện 1 stream trong ticks chúng ta cần đăng ký và phản ứng nó

All our Ticker class does is expose a tick function which takes the number of ticks (seconds)
we want and returns a stream which emits the remaining seconds every second.
Next up, we need to create our TimerBloc which will consume the Ticker

- tất cả những gì Ticker làm là thể hiện ... đm nói tóm lại là hàm tính giây ok ? dịch cc
 */

class Ticker {
  const Ticker();

  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
