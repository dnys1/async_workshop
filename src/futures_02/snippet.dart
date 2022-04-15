void main() {
  Future(() => print('constructed future'));
  implicitFuture();
}

Future<void> implicitFuture() async {
  print('implicit future');
}
