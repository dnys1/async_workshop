# Futures

Futures are the base unit of asynchrony in Dart. They take the same shape as a Promise (if you're coming from the Node.js world), providing an API which allows for attaching callbacks (`then`, `catchError`, `whenComplete`), but also integrating neatly into the `async`/`await` system such that you don't need to manually handle callbacks in most cases.
