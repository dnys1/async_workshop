# Creating a Stream

The last, commonly used method to create a Stream is the `StreamController`. In certain cases, you want to have full control over when and where events are added to the stream, and decoupling the source from the sink makes the most sense. The `StreamController` provides the most flexibility in this regard, since you are not bound to a single method or set of methods for your Stream. Simply create an instance of the controller and pass the sink object anywhere that events need to be added. The Stream stays open until you close it.
