void main() {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  stream.listen((el) {
    print('Got element: $el');
  });
}
