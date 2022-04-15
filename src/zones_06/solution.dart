import 'dart:async';

void main() {
  runZonedGuarded(
    () => Future.error(Exception()),
    (error, stackTrace) => print('Caught it!'),
  );
}
