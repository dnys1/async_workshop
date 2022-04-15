import 'dart:async';

void main() {
  runZonedGuarded(
    () async {
      try {
        await Future(() {
          Future.error(Exception());
        });
      } catch (e) {
        print('Caught inside!');
      }
    },
    (e, st) => print('Caught outside!'),
  );
}
