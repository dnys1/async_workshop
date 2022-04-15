void main() {
  generatedStream.listen((event) {
    print('generatedStream event: $event');
  }, onDone: () {
    print('generatedStream done');
  });
}

Stream<int> get generatedStream async* {
  yield 1;
  await Future.delayed(const Duration(milliseconds: 50));
  yield 2;
  await Future.delayed(const Duration(milliseconds: 50));
  yield 3;
  await Future.delayed(const Duration(milliseconds: 50));
}
