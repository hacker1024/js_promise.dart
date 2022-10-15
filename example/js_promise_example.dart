// ignore_for_file: avoid_print

import 'dart:html';

import 'package:js_promise/js_promise.dart';

void main() {
  final promise = Future.value('Hello, world!').toPromise();
  window.console.log(promise);
  promiseToFuture(promise).then(print);
}
