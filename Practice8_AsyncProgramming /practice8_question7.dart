import 'dart:io';

// Write a Dart program that takes in two integers as input, waits for 3 seconds, and then prints the sum of the two numbers.
Future<void> calculateSum(int n1, int n2) async {
  await Future.delayed(Duration(seconds: 3));
  print('Sum of $n1 and $n2 is: ${n1 + n2}');
}

void main() {
  print('Enter first Number:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter second Number:');
  int num2 = int.parse(stdin.readLineSync()!);

  calculateSum(num1, num2);
}
