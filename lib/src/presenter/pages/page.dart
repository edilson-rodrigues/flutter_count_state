import 'package:flutter/material.dart';
import '../../shared/widgets/state_builder.dart';
import '../controllers/count_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StateBuilder(
              valueListenable: _controller,
              buildData: (context, state) => Text(
                '${state.data}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              buildError: (context, state) => Text(
                'Error: ${state.error}',
              ),
              buildLoading: (_) => const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
