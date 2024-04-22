import 'dart:math';

// QUESTIONS FOR PRACTICE 7
void main() {
  print('\n-------------');
  print('Question 1');
  print('What is the purpose of the ? operator in Dart null safety?');
  print('-------------');
  question1();
  print('\n-------------');
  print('Question 2');
  print(
      'Create a late variable named address, assign a US value to it and print it.');
  print('-------------');
  question2();
  print('\n-------------');
  print('Question 3');
  print('How do you declare a nullable type in Dart null safety?');
  print('-------------');
  question3();
  print('\n-------------');
  print('Question 4');
  print(
      'Write a program in a dart to create an age variable and assign a null value to it using ?.');
  print('-------------');
  question4();
  print('\n-------------');
  print('Question 5');
  print(
      'Write a function that accepts a nullable int parameter and returns 0 if the value is null using null coalescing operator ??.');
  print('-------------');
  question5();
  print('\n-------------');
  print('Question 6');
  print(
      '''Write a function named generateRandom() in dart that randomly returns 100 or null. Also, assign a return value
       of the function to a variable named status that can’t be null. Give status a default value of 0, if generateRandom() function returns null.''');
  print('-------------');
  question6();
}

// What is the purpose of the ? operator in Dart null safety?
void question1() {
  print(
      '''null safety is used for null-aware access, allowing safe access to properties, methods, 
  or elements on potentially nullable objects without causing null dereference errors. for example ''');
  String? name = "John";

  // Using the null-aware access operator to safely access the length property
  int? length = name.length;

  print(length); // Output: 4 (length of the string "John")
}

// Create a late variable named address, assign a US value to it and print it.
void question2() {
  late String address = "US";
  print(address);
}

// How do you declare a nullable type in Dart null safety?
void question3() {
  print(
      "By default dart don't accept null value so we have to use null safety operator ?");
  String? address = null;
  print("address was assigned as: $address");
}

// Write a program in a dart to create an age variable and assign a null value to it using ?.
void question4() {
  int? age = null;
  print('Age: $age');
}

// Write a function that accepts a nullable int parameter and returns 0 if the value is null using null coalescing operator ??.
int? nullAbleInt(int? value) {
  return value ?? 0;
}

void question5() {
  int? value5 = nullAbleInt(5);
  print("when value parameter  is 5: $value5");
  int? valueNull = nullAbleInt(null);
  print("when value parameter is null: $valueNull");
}

/** 
Write a function named generateRandom() in dart that randomly returns 100 or null. Also, assign a return valueof the function to a variable named status that can’t be null. 
Give status a default value of 0, if generateRandom() 
function returns null.
 */
int? generateRandom() {
  int randomNumber = Random().nextInt(2);
  print('randomNumber $randomNumber');
  return randomNumber == 0 ? 100 : null;
}

void question6() {
  int status = generateRandom() ?? 0;
  print("Random Sttus is: $status");
}
