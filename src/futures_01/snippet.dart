import 'dart:async';

abstract class Future<T> {
  Future<R> then<R>(FutureOr<R> Function(T) onValue);
  Future<T> catchError(FutureOr<void> Function(Object, [StackTrace?]) onError);
  Future<T> whenComplete(FutureOr<void> Function() action);
}
