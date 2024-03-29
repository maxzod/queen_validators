import 'package:queen_validators/src/rules/languages/is_english_char.dart';
import 'package:test/test.dart';

void main() {
  test("it return true if input is english char only", () {
    final result = IsEnglishChars().isValid("abc");
    expect(result, isTrue);
  });
  test("it return false if input has any symbols ", () {
    final result = IsEnglishChars().isValid("++4^/%+*");
    expect(result, isFalse);
  });
}
