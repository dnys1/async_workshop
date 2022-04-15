# Using a Future

While you can register callbacks on Futures using the instance methods `then`, `catchError` and `whenComplete`, it's more common to handle these cases using control flow structures like `try`/`catch`/`await`. The following two code snippets have the same effect, but one is arguably much easier to read than the other.
