import 'dart:async';

void main() {
  print('main #1 of 2'); // 1
  scheduleMicrotask(() => print('microtask #1 of 3')); // 3

  Future.delayed(
    const Duration(seconds: 1),
    () => print('future #1 (delayed)'), // 15
  );

  Future(() => print('future #2 of 4')) // 6
      .then((_) => print('future #2a')) // 7
      .then((_) {
    print('future #2b'); // 8
    scheduleMicrotask(() => print('microtask #0 (from future #2b)')); // 10
  }).then((_) => print('future #2c')); // 9

  scheduleMicrotask(() => print('microtask #2 of 3')); // 4

  Future(() => print('future #3 of 4')) // 11
      .then((_) => Future(() => print('future #3a (a new future)'))) // 13
      .then((_) => print('future #3b')); // 14

  Future(() => print('future #4 of 4')); // 12
  scheduleMicrotask(() => print('microtask #3 of 3')); // 5
  print('main #2 of 2'); // 2
}
