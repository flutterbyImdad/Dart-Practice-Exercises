import 'dart:async';

/**
 Write a Dart program that takes a string as input, reverses the string asynchronously, and then prints the reversed string.
 */

Future<String> reverseString(String input) async {
  await Future.delayed(Duration(seconds: 2));
  String reversed = input.split('').reversed.join('');
  return reversed;
}

void main() async {
  String inputString = 'Hello, Vacations!';
  print('Original Input String: $inputString');
  String reversedString = await reverseString(inputString);

  print('Reveresed string is: $reversedString');
}
