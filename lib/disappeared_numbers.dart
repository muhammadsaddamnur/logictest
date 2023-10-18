List<int> findDisappeared(List<int> nums) {
  var n = nums.length;

  final List<bool> visited = List.generate(n, (index) => false);

  for (int num in nums) {
    visited[num - 1] = true;
  }

  final List<int> missingNumbers = [];

  for (int i = 0; i < n; i++) {
    if (!visited[i]) {
      missingNumbers.add(i + 1);
    }
  }
  return missingNumbers;
}
