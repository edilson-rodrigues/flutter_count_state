abstract class ValuesState<T extends Object> {
  final T? data;
  final Exception? error;
  final bool isLoading;

  ValuesState({
    this.data,
    this.isLoading = false,
    this.error,
  });

  bool get hasData => data != null;

  bool get hasError => error != null;

  bool get noData => data == null;

  @override
  String toString() =>
      'State(data: <$T>$data, error: $error, isLoading: $isLoading)';
}
