import 'package:queen_validators/queen_validators.dart';
import 'package:test/test.dart';

class TestRule extends TextValidationRule {
  TestRule([super.error]);

  @override
  bool isValid(String input) => input.isNotEmpty;
  @override
  String toString() => error ?? (throw UnimplementedError());
}

void main() {
  group(
    'TextValidationRule base rule',
    () {
      test(
        'if is valid return null',
        () {
          final testRule = TestRule();
          expect(testRule.isValid('v'), isTrue);
        },
      );

      test(
        'if is valid return null',
        () {
          final testRule = TestRule();
          expect(testRule.isValid('v'), isTrue);
        },
      );
      test(
        'it can have a sign custom message',
        () {
          final testRule = TestRule('mSg');
          final testRule2 = TestRule('gSm');
          expect(
            testRule.error,
            'mSg',
          );
          expect(
            testRule2.error,
            'gSm',
          );
        },
      );
    },
  );
}
