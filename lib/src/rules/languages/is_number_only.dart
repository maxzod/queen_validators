import '../../../queen_validators.dart';

class IsNumbersOnly extends TextValidationRule {
  IsNumbersOnly([super.error]);

  @override
  bool isValid(String input) => isNumbersOnly(input);

  @override
  String toString() => 'validation.is_numbers_only';
}

bool isNumbersOnly(String input) => RegExp('[0-9]').hasMatch(input);
