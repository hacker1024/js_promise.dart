# js_promise

A Dart package providing interop functionality with JavaScript Promises.

This package compliments the existing functionality in `dart:html`.

## Usage

```dart
import 'package:js_promise/js_promise.dart';

void main() {
  final promise = Future.value('Hello, world!').toPromise();
}
```
