# Dart Event Loop

When executing synchronous code, there are not really any choices on how to excute it -- it will execute on the current thread at precisely the moment it's called. The challenge with asynchronous code is deciding when and where to execute it. If not now, then when? If not on the current thread, then where? And who's in charge of managing that?

In other programming languages, these decisions and their implementations are left up to the developer. While there may exist primitives for spawning new threads and sending messages between them, the orchestration and runtime guarantees are often left to the developer to figure out. Dart removes some of this burden by leveraging a mechanism called the event loop, which allows for asynchronous processing of code on single thread in a non-blocking fashion.

The event loop, at its core, is simply a FIFO queue which processes events in a loop as they happen over the life of the program. These events can be anything from user input to I/O operations to notifications from the OS. In all these cases, the event loop buffers the events until its their turn to execute.

In Dart, the event queue is actually split into two queues: the main queue and the microtask queue. On every loop, the events in the microtask queue are prioritized over the main queue events, giving you the ability to schedule high-priority events for execution ASAP just not right at that moment. This difference is reflected in many of the APIs, especially the [`Future`](https://api.flutter.dev/flutter/dart-async/Future-class.html) ones:

- [`Future.sync`](https://api.flutter.dev/flutter/dart-async/Future/Future.sync.html): Creates a Future which executes immediately.
- [`Future.microtask`](https://api.flutter.dev/flutter/dart-async/Future/Future.microtask.html): Creates a Future which executes in the microtask queue.
- [`Future.new`](https://api.flutter.dev/flutter/dart-async/Future/Future.html): Creates a Future which executes in the main queue.

## Quiz

What's does the following program output?
