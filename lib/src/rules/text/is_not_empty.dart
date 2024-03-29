import '../../../queen_validators.dart';

/// checks if the input is not empty string
/// IsRequired is more convenient still
/// wont be bad to have both
class IsRequired extends TextValidationRule {
  IsRequired([super.error]);

  @override
  bool isValid(String input) => isNotEmpty(input);
  @override
  String toString() => 'required';
}

/// `trim` the string then checks if `isNotEmpty`
bool isNotEmpty(String? string) {
  return string?.trim().isNotEmpty ?? false;
}
