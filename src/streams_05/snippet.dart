import 'dart:async';

Future<void> main() async {
  final controller = StreamController<int>();

  listenToStream(controller.stream);
  controller.sink.add(1);
  await Future.delayed(const Duration(milliseconds: 50));
  controller.sink.add(2);
  await Future.delayed(const Duration(milliseconds: 50));
  controller.sink.add(3);
  controller.sink.close();
}

void listenToStream(Stream<int> stream) {
  stream.listen((event) {
    print('controllerStream event: $event');
  }, onDone: () {
    print('controllerStream done');
  });
}
