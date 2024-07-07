import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final Provider<DateTime> currentDate = Provider((ref) => DateTime.now());

class HomePageRPConsumer extends ConsumerWidget {
  const HomePageRPConsumer({super.key}); //! super key

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(currentDate); // date is window to provider world
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hooks riverpod'),
            Text(
              date.toIso8601String(),
            ),
          ],
        ),
      ),
    );
  }
}
