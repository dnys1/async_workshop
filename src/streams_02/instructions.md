# Streams

To create a `Stream`, you need a source of events to iterate over. Streams are generally created in one of three ways: 

- Using one of the factory constructors on the `Stream` class: [`Stream.fromFuture`](), [`Stream.fromFutures`](), [`Stream.fromIterable`]()
- Implicitly via an `async*` generator function
- Using a `StreamController` to control the source of events

Each one of these are explored in the next slides.
