/** 
 Write a Dart program that takes a list of integers as input, multiplies each integer by 2 asynchronously, 
 and then prints the modified list.
*/
import 'dart:async';

Stream<List<int>> multiplyByTwoStream(List<int> input) async* {
  await Future.delayed(Duration(seconds: 2));
  List<int> modifiedList = [];
  for (int number in input) {
    modifiedList.add(number * 2);
  }
  yield modifiedList;
}

void main() async {
  List<int> inputList = [1, 2, 3, 4, 5];
  print('Original List: $inputList');

  Stream<List<int>> modifiedStream = multiplyByTwoStream(inputList);

  List<int> modifiedList = [];
  await for (List<int> modifiedNumbers in modifiedStream) {
    modifiedList.addAll(modifiedNumbers);
  }

  print('Modified List: $modifiedList');
}
