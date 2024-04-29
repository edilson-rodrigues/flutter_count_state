import 'package:flutter/foundation.dart';

import '../state/state.dart';

class CounterController extends ValueListenable<CounterState> {
  CounterController() : _state = ValueNotifier(CounterState(data: 0));

  final ValueNotifier<CounterState> _state;

  @override
  CounterState get value => _state.value;

  void increment() {
    if (_state.value.data != null && _state.value.data! < 10) {
      _state.value = CounterState(data: _state.value.data! + 1);
    } else {
      _state.value =
          CounterState(error: Exception('Counter cannot be greater than 10'));
    }
  }

  void decrement() {
    _state.value = CounterState(data: _state.value.data! - 1);
  }

  void reset() {
    _state.value = CounterState(data: 0);
  }

  @override
  void addListener(VoidCallback listener) {
    _state.addListener(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _state.removeListener(listener);
  }
}
