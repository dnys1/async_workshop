# Zones

But wait, what happens here?

This should work, right? Because we're awaiting the Future where the error occurs.

```
Uncaught Error: Exception
```

Shoot! We're back to square one... So, because we're not awaiting the inner future, we're once again leaving the `try` block before the error is thrown. Does this mean we have to try/catch/await *every* Future that could possibly throw? What if we forget, or don't have control over the code? How can we prevent our app from crashing? 

To answer that, we have to dig into what it means to throw an error in the context of asynchronous code. In Dart, when an exception or error is raised in one of the event loops, it's reported to the `Zone` in which it was created. Basically, every `throw ...;` statement gets transformed to a single line of code:

```dart
zoneWhereErrorWasThrown.handleUncaughtError(error, stackTrace);
```

Here, `zoneWhereErrorWasThrown` is a [Zone](https://api.flutter.dev/flutter/dart-async/Zone-class.html) object which localizes the error to the context in which it was thrown. Every Dart program starts out with a single root zone and all new zones inherit from this one. This is because the only way to create a new zone is to fork off the current one; and in doing so, the newly created zone inherits all properties of the parent one \*.

The reason our unawaited exceptions are unhandled in these examples is because the root zone does not have an uncaught error handler by default, meaning all exceptions which are thrown outside of a try/catch block will become unhandled. But we can create a new Zone which *does* have an error handler, and then, all exceptions which would otherwise be unhandled can be caught in a single place. 

\* Except those you choose to override.
