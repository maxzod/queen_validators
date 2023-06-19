import '../../../queen_validators.dart';

class MaxValue extends TextValidationRule {
  final num max;

  MaxValue(this.max, [String? error]) : super(error);

  @override
  bool isValid(String input) => maxValue(input, max);
  @override
  String toString() => 'validation.must_be_max';
}

bool maxValue(Object? value, num max) {
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
  return val != null && val <= max;
}
