part of 'models.dart';

class ApiRetunValue<T> {
  final T value;
  final String message;

  ApiRetunValue({this.message, this.value});
}
