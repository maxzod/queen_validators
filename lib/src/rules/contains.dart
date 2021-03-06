import 'package:queen_validators/src/imp/validation.dart';

/// checks if the input does contain the provided value;

class Contains extends TextValidationRule {
  final String value;

  const Contains(this.value, [String? msg]) : super(msg);

  @override
  String get defaultError => 'must contain $value';

  @override
  bool isValid(String val) => val.trim().contains(value);
}
