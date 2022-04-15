void main() {
  final fromIterable = Stream.fromIterable([1, 2, 3, 4, 5]);
  fromIterable.listen((el) {
    print('fromIterable element: $el');
  }, onDone: () {
    print('fromIterable done');
  });

  final fromValue = Stream.value('abc');
  fromValue.listen((el) {
    print('fromValue element: $el');
  }, onDone: () {
    print('fromValue done');
  });
}
