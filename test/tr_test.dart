import 'package:queen_validators/queen_validators.dart';
import 'package:queen_validators/tr.dart';
import 'package:test/test.dart';

void main() {
  test(
    'if there is no onSpectefic ti returns the toString result',
    () {
      final func = qValidator([IsRequired()]);
      final msg = func('');
      expect(msg, 'required');
    },
  );
  test(
    'it can override the message',
    () {
      final func = qValidator([IsRequired()]);
      final msg = func('');
      expect(msg, 'required');
      ValidatorsLocalization.on<IsRequired>((rule) => 'new_msg');
      expect(func(''), 'new_msg');
    },
  );
}
