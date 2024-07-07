import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Counter extends StateNotifier<int?> {
  Counter() : super(null);

  void increment() {
    state = (state == null) ? 1 : (state ?? 0) + 1;
  }

  int? get value => state;
}

final CounterProvider = StateNotifierProvider<Counter, int?>(
  (ref) => Counter(),
);

class Example2 extends ConsumerWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Consumer(
              builder: (context, ref, child) {
                final counter = ref.watch(CounterProvider);
                return Text(
                    counter == null ? 'Press the button' : counter.toString());
              },
            ),
            TextButton(
              onPressed: ref.read(CounterProvider.notifier).increment,
              child: Text('Increment the Value'),
            ),
          ],
        ),
      ),
    );
  }
}
