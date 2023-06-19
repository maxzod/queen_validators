import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

void main() {
  test(
    'IsOptional does not have a message',
    () {
      expect(() => IsOptional().toString(), throwsA(isA<Exception>()));
    },
  );
}
