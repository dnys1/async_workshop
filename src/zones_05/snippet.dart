import 'dart:async';

void main() {
  final zone = Zone.current.fork(
    specification: ZoneSpecification(
      handleUncaughtError: (self, parent, zone, error, stackTrace) {
        print('Caught it!');
      },
    ),
  );
  zone.run(() {
    Future.error(Exception());
  });
}
