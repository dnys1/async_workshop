import 'dart:async';

// Guess the order of execution.
void main() {
  // A regular Future
  Future(() => print('future'));

  // A microtask Future
  Future.microtask(() => print('microtask future'));

  // A sync Future
  Future.sync(() => print('sync future'));

  // A sync function
  print('sync');
}
