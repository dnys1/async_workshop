# Zones

That's a lot of code to get the behavior we want, though, and it's a bit terse. Luckily, there's a built-in method to provide the same functionality which we can sprinkle into our code whenever we need a fallback error handler. It's called [`runZonedGuarded`](https://api.flutter.dev/flutter/dart-async/runZonedGuarded.html). 

See if you can use this method to transform the previous code.
