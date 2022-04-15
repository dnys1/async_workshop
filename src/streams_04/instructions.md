# Creating a Stream

The asynchronous equivalent of the `sync*` generator syntax is `async*` which allows for a combination of `await` and `yield` statements to generate a Stream using any logic. This is really convenient when the logic to generate the Stream is too complex to fit one of the factory methods' use cases, but you still want a declarative way to express the Stream's elements.
