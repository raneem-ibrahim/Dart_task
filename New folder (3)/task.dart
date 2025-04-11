void runAllTasks() {
  // Task 1
  List<int> numbers1 = [5, 1, 9, 3, 7];
  numbers1.sort((a, b) => b.compareTo(a));
  print(numbers1);

  // Task 2
  List<int> numbers2 = [1, 2, 2, 3, 4, 4, 5];
  Set<int> uniqueSet2 = Set<int>.from(numbers2);
  List<int> uniqueNumbers2 = uniqueSet2.toList();
  print(uniqueNumbers2);

  // Task 3
  String str3 = "aaabbc";
  Map<String, int> freq3 = {};
  for (var char in str3.split('')) {
    freq3[char] = (freq3[char] ?? 0) + 1;
  }
  print(freq3);

  // Task 4
  List<int> list4a = [1, 2, 3];
  List<int> list4b = [4, 5, 6];
  list4a.addAll(list4b);
  print(list4a);

  // Task 5
  Set<int> set5a = {1, 2, 3, 4};
  Set<int> set5b = {3, 4, 5, 6};
  Set<int> intersection5 = set5a.intersection(set5b);
  print(intersection5);

  // Task 6
  List<int> list6a = [1, 2, 3, 4, 5, 6];
  List<int> list6b = [3, 5];
  list6a.removeWhere((element) => list6b.contains(element));
  print(list6a);

  // Task 7
  List<List<int>> nested7 = [[1, 2], [3, 4], [5]];
  List<int> flat7 = nested7.expand((e) => e).toList();
  print(flat7);

  // Task 8
  List<int> numbers8 = [1, 2, 3, 5];
  Set<int> fullSet8 = Set.from(List.generate(5, (i) => i + 1));
  Set<int> givenSet8 = Set.from(numbers8);
  List<int> missing8 = fullSet8.difference(givenSet8).toList();
  print(missing8);

  // Task 9
  String str9 = "aaabbc";
  Map<String, int> freq9 = {};
  for (var char in str9.split('')) {
    freq9[char] = (freq9[char] ?? 0) + 1;
  }
  print(freq9);

  // Task 10
  List<int> numbers10 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> even10 = numbers10.where((n) => n % 2 == 0).toList();
  print(even10);

  // Task 11
  Set<int> set11a = {1, 2, 3};
  Set<int> set11b = {4, 5, 6, 3};
  Set<int> union11 = set11a.union(set11b);
  print(union11);

  // Task 12
  Map<String, dynamic> person12 = {'Name': 'Alice', 'Age': 30, 'City': 'New York'};
  person12.forEach((key, value) => print('$key: $value'));

  // Task 13
  List<int> numbers13 = [1, 5, 9, 3, 7];
  int max13 = numbers13.reduce((a, b) => a > b ? a : b);
  print(max13);

  // Task 14
  Set<int> set14 = {1, 2, 3, 4};
  print(set14.contains(3));

  // Task 15
  Set<int> set15a = {1, 2, 3, 4};
  Set<int> set15b = {3, 4, 5};
  Set<int> diff15 = set15a.difference(set15b);
  print(diff15);

  // Task 16
  Set<int> set16a = {1, 2, 3};
  Set<int> set16b = {4, 5, 6, 3};
  Set<int> union16 = set16a.union(set16b);
  print(union16);

  // Task 17
  List<int> numbers17 = [1, 2, 2, 3, 4, 4, 5];
  Set<int> unique17 = Set.from(numbers17);
  print(unique17);

  // Task 18
  Set<int> set18 = {1, 2, 3, 4, 5};
  List<int> list18 = set18.toList();
  print(list18);

  // Task 19
  Map<String, double> products19 = {'Apple': 2.5, 'Banana': 1.2, 'Cherry': 3.0};
  products19['Apple'] = 3.0;
  products19.remove('Banana');
  print(products19);
}
void main() {
  runAllTasks();
}
