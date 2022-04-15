Future<void> main() async {
  // Using callbacks
  futureThatThrows()
      .onError<Exception>((e, st) => print('Caught exception in callback: $e'))
      .whenComplete(() => print('Finished in callback'));

  // Using try/catch/await
  try {
    await futureThatThrows();
  } on Exception catch (e) {
    print('Caught exception in catch: $e');
  } finally {
    print('Finished in finally');
  }
}

Future<void> futureThatThrows() async {
  throw Exception();
}
