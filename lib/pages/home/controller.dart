import 'package:flutter_riverpod/flutter_riverpod.dart';

/// counterProvider provides access to the Counter state notifier.
final StateNotifierProvider<Counter, int> counterProvider =
    StateNotifierProvider<Counter, int>((ref) => Counter());

// A state notifier class that manages an integer state for counting purposes.
class Counter extends StateNotifier<int> {
  Counter() : super(0);

  /// this function increases the counter by 1.
  void increment() => state++;

  /// this function decreases the counter by 1.
  void decrement() => state--;
}
