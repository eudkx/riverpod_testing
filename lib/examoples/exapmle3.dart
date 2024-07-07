import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum City {
  stockholm,
  paris,
  tokyo,
}

typedef WeatherEmoji = String;

Future<WeatherEmoji> getWeather(City city) {
  return Future.delayed(
    const Duration(seconds: 1),
    () =>
        {
          City.stockholm: 'Cold',
          City.paris: 'Rainy',
          City.tokyo: 'Sunny',
        }[city] ??
        'bruh',
  );
}

final currentCityProvider = StateProvider<City?>(
  (ref) => null,
);

final weatherProvider = FutureProvider

class Example3 extends ConsumerWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Increment the Value'),
            ),
          ],
        ),
      ),
    );
  }
}
