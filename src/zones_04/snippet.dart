void main() async {
  try {
    await Future(() {
      Future.error(Exception());
    });
  } catch (e) {
    print('Caught it!');
  }
}
