import 'package:queen_validators/src/rules/languages/is_arabic_chars.dart';
import 'package:test/test.dart';

void main() {
  test("it return true if input is arabic char only", () {
    final result = IsArabicChars().isValid("أبجدهوز");
    expect(result, isTrue);
  });
  test("it return false if input has any symbols ", () {
    final result = IsArabicChars().isValid("++4/z%++");
    expect(result, isFalse);
  });
}
