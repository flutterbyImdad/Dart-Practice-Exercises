// Write a Dart program that takes a list of strings as input, sorts the list asynchronously, and then prints the sorted list.
Future<List<String>> sortList(List<String> input) async {
  await Future.delayed(Duration(seconds: 3));
  input.sort();
  return input;
}

void main() {
  List<String> inputList = [
    'travel',
    'bag',
    'vacations',
    'lofi music',
    'night',
    'moon'
  ];
  print('Unsorted Input List: $inputList');

  sortList(inputList).then((sortedlist) {
    print('Sorted List: $sortedlist');
  });
}
