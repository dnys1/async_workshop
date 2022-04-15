Future<void> main() async {
  try {
    await Future.error(Exception());
  } catch (e) {
    print('Caught it!');
  }
}
