import '../../../queen_validators.dart';

class IsDateAfter extends TextValidationRule {
  final DateTime date;

  IsDateAfter(this.date, [String? error]) : super(error);

  @override
  bool isValid(String input) => isDateAfter(input, date);

  @override
  String toString() => 'must be after $date';
}

bool isDateAfter(Object? input, DateTime date) {
  DateTime? input0;
  if (input is String) {
    input0 = DateTime.tryParse(input);
  } else if (input is DateTime) {
    input0 = input;
  }
  return input0 != null && input0.isAfter(date);
}
