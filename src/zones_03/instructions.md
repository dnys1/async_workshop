# Zones

```
Uncaught Error: Exception
```

Huh, same thing... why didn't we catch it? Well, let's read the description of [`Future.error`](https://api.flutter.dev/flutter/dart-async/Future/Future.error.html):

> Creates a future that completes with an error.
>
> The created future will be completed with an error in a future microtask.

Ah, so we don't catch it because the error is thrown in the microtask queue, which will run after we leave the `try` block. 

We can fix that by awaiting the Future. Now if you run it, you should see output in the `Console` tab:

```
Caught it!
```

Great! Everything is back to normal and that all makes sense.
