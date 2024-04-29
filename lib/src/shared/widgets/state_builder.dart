import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../state/state.dart';

class StateBuilder extends StatefulWidget {
  const StateBuilder({
    super.key,
    required this.valueListenable,
    this.buildError,
    this.buildLoading,
    this.buildData,
  });

  final Widget Function(BuildContext context, ValuesState error)? buildError;
  final Widget Function(BuildContext context, ValuesState data)? buildData;
  final Widget Function(BuildContext context)? buildLoading;
  final ValueListenable<ValuesState> valueListenable;

  @override
  State<StateBuilder> createState() => _StateBuilderState();
}

class _StateBuilderState extends State<StateBuilder> {
  @override
  void initState() {
    super.initState();
    widget.valueListenable.addListener(_listener);
  }

  void _listener() => setState(() {});

  @override
  void dispose() {
    widget.valueListenable.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.valueListenable.value;

    if (state.hasData && widget.buildData != null) {
      return widget.buildData!(context, widget.valueListenable.value);
    }

    if (state.hasError && widget.buildError != null) {
      return widget.buildError!(context, widget.valueListenable.value);
    }

    if (state.isLoading && state.noData && widget.buildLoading != null) {
      return widget.buildLoading!(context);
    }

    return const SizedBox.shrink();
  }
}
