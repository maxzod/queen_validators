import '../../../queen_validators.dart';

/// checks if the input is a valid `port`
class IsPort extends TextValidationRule {
  const IsPort([super.error]);

  @override
  bool isValid(String input) => isPort(input);

  @override
  String toString() => 'validation.is_not_port';
}

// returns true if the input is valid port number
bool isPort(Object? input) {
  num? port;
  if (input is String) {
    port = num.tryParse(input);
  } else if (input is num) {
    port = input;
  }
  if (port != null && port.toInt() != port) {
    return false;
  }

  return port != null && 0 <= port && port <= 65535;
}
