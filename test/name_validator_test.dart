import 'package:logic_test/name_validator.dart';
import 'package:test/test.dart';

void main() {
  test('isValidName test', () {
    for (var element in [
      ['A. Kesya', true],
      ['A. K. Putri', true],
      ['Angelina', false],
      ['a. Kesya', false],
      ['A Kesya', false],
      ['A. Kesya Putri', false],
      ['A. Kesya P.', false],
      ['A. Kesya P.', false],
      ['Angelina. Kesya Putri.', false]
    ]) {
      final validate = isValidName(element[0] as String);
      print(element[0] as String);
      print(validate);
      expect(validate, element[1] as bool);
    }
  });
}
