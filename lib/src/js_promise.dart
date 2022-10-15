import 'package:js/js.dart';

typedef PromiseExecutor = void Function(
  Function(Object? result) resolutionFunc,
  Function(Object? result) rejectionFunc,
);

@JS('Promise')
class Promise {
  factory Promise(PromiseExecutor executor) =>
      Promise._(allowInterop(executor));

  factory Promise.fromFuture(Future<Object?> future) => Promise(
        (resolutionFunc, rejectionFunc) =>
            future.then(resolutionFunc, onError: rejectionFunc),
      );

  external factory Promise._(PromiseExecutor executor);
}

extension FuturePromiseExtension<T> on Future<T> {
  Promise toPromise() => Promise.fromFuture(this);
}
