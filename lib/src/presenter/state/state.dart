import 'package:count_state/src/shared/state/state.dart';

class CounterState extends ValuesState<int> {
  CounterState({
    super.data,
    super.isLoading,
    super.error,
  });

  @override
  String toString() => 'CounterState(data: $data, error: $error, isLoading: $isLoading)';
}