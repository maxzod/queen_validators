import '../../../queen_validators.dart';

class MinValue extends TextValidationRule {
  final num min;

  MinValue(this.min, [String? error]) : super(error);

  @override
  bool isValid(String input) => minValue(input, min);
  @override
  String toString() => 'validation.must_be_min';
}

bool minValue(Object? value, num min) {
  num? val;
  if (value is String) {
    val = num.tryParse(value);
  } else if (value is num) {
    val = value;
  } else if (value is int) {
    val = value;
  } else if (value is double) {
    val = value;
  }
  return val != null && val >= min;
}
