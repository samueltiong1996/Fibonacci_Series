import 'package:sequence/sequence.dart';

main() {

  FibonacciSeries s = FibonacciSeries();

  for (int i = 0; i < 15; i++)
    print(s.next());
}

class FibonacciSeries extends Object with Sequence<int> {

  int a = 0, b = 1;

  FibonacciSeries()
      : a = 0,
        b = 1;

  @override
  int next() {
    super.next();
    int next = a + b;
    b = a;
    a = next;
    return next;
  }

  @override
  int max() => a;

  @override
  int min() => 0;
}

