# Zones

Handling uncaught errors is one of the most common uses for zones, but there are others as well. For example, every zone maintains a global map of values which can be used to track context across asynchronous gaps. A common pattern you'll see is the ability to override default values using zone values. 

To learn more about Zone values, see the [`Zone.fork`](https://api.flutter.dev/flutter/dart-async/Zone/fork.html) API docs.
