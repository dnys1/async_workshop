# Creating a Future

Futures can be created by invoking one of the `Future` constructors we explored previously. Marking a function as `async` will also produce a Future which can be awaited by the calling function.

However, the behavior of these is slightly different. While constructed Futures run in the next event loop, implicit futures execute immediately up to the first `await` statement which is then called in the next event loop. To achieve the same behavior in a constructed Future, use `Future.sync` which will execute the provided callback immediately up until the first await statement.
