import 'dart:async';

void main() {
  runZoned(() {
    runZoned(() {
      final zoneValue = Zone.current[#myValue];
      print('Inherited zone value: $zoneValue');
    });
  }, zoneValues: {
    #myValue: 123,
  });
}
