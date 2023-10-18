import 'package:logic_test/name_validator.dart' as name_validator;
import 'package:logic_test/disappeared_numbers.dart' as disappeared_numbers;

void main() {
  var nums1 = [4, 3, 2, 7, 8, 2, 3, 1];
  var nums2 = [1, 1];

  final result1 = disappeared_numbers.findDisappeared(nums1);
  final result2 = disappeared_numbers.findDisappeared(nums2);

  print(result1); // Output: [5, 6]
  print(result2); // Output: [2]
}
