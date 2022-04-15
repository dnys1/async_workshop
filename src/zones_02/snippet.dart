void main() {
  try {
    Future.error(Exception());
  } catch (e) {
    print('Caught it!');
  }
}
