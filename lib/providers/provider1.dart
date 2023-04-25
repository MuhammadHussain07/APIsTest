import 'package:flutter/foundation.dart';

class Providername extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  increment() {
    _counter = _counter + 1;
    notifyListeners();
  }

  decrement() {
    _counter = _counter - 1;
    notifyListeners();
  }

  reset() {
    _counter = 0;
    notifyListeners();
  }
}
