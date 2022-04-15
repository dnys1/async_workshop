import 'dart:html';

const workerCode = r'''
onmessage = (e) => {
  console.log(`Message received from main: ${JSON.stringify(e.data)}`);
  postMessage(e.data[0] + e.data[1]);
};
''';

void main() {
  final blob = Blob([workerCode], 'text/javascript');
  final worker = Worker(Url.createObjectUrlFromBlob(blob));

  worker.onMessage.listen((e) {
    print('Answer: ${e.data}');
  });

  print('What is 2 + 2?');
  worker.postMessage([2, 2]);
}
