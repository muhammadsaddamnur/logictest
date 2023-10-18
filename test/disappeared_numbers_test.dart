import 'package:logic_test/disappeared_numbers.dart';
import 'package:logic_test/name_validator.dart';
import 'package:test/test.dart';

void main() {
  test('isValidName test', () {
    for (var element in [
      [
        [4, 3, 2, 7, 8, 2, 3, 1],
        [5, 6]
      ],
      [
        [2, 4, 4, 5, 2],
        [1, 3]
      ],
      [
        [2, 4, 4, 5, 2, 6, 7],
        [1, 3]
      ],
      [
        [1, 1],
        [2]
      ],
    ]) {
      final validate = findDisappeared(element[0]);
      expect(validate, element[1]);
    }
  });
}
