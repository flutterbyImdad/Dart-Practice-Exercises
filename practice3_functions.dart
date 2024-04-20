import 'dart:math';

/// QUESTIONS FOR PRACTICE 3

void main() {
  print('\n-------------');
  print('Question 1');
  print('Write a program in Dart to print your own name using function.');
  question1();
  print('\n-------------');
  print('Question 2');
  print(
      'Write a program in Dart to print even numbers between intervals using function.');
  question2();
  print('\n-------------');
  print('Question 3');
  print(
      'Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.');
  question3();
  print('\n-------------');
  print('Question 4');
  print('Write a program in Dart that generates random password.');
  question4();
  print('\n-------------');
  print('Question 5');
  print(
      'Write a program in Dart that find the area of a circle using function. Formula: pi * r * r');
  question5();
  print('\n-------------');
  print('Question 6');
  print('Write a program in Dart to reverse a String using function.');
  question6();
  print('\n-------------');
  print('Question 7');
  print(
      'Write a program in Dart to calculate power of a certain number. For e.g 5^3=125');
  question7();
  print('\n-------------');
  print('Question 8');
  print(
      '''Write a function in Dart named add that takes two numbers as arguments and returns their sum.''');
  question8();
  print('\n-------------');
  print('Question 9');
  print(
      '''Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.''');
  question9();
  print('\n-------------');
  print('Question 10');
  print(
      '''Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.''');
  question10();
  print('\n-------------');
  print('Question 11');
  print(
      '''Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.''');
  question11();
  print('\n-------------');
  print('Question 12');
  print(
      '''Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.''');
  question12();
}

// Write a program in Dart to print your own name using function.
void sayMyName() {
  print('Imdad Hussain');
}

void question1() {
  sayMyName();
}

// Write a program in Dart to print even numbers between intervals using function.
void evenNumber(int num1, int num2) {
  for (int i = num1; i < num2; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void question2() {
  int start = 4;
  int end = 16;
  print('Even Number between $start and $end are as follow:');
  evenNumber(start, end);
}

// Create a function called greet that takes a name as an argument and prints a greeting message. For example, greet(“John”) should print “Hello, John”.
void greeting(String name) {
  print("Hello, $name");
}

void question3() {
  String name = 'John';
  greeting(name);
}

// Write a program in Dart that generates random password.
String generateRandomPassword(int length) {
  const String charset =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()-_=+';
  Random random = Random();
  String password = '';
  for (int i = 0; i <= length; i++) {
    int randomIndex = random.nextInt(charset.length);
    password += charset[randomIndex];
  }
  return password;
}

void question4() {
  int passwordLength = 12;
  String randomPassword = generateRandomPassword(passwordLength);
  print('Random password is: $randomPassword');
}

// Write a program in Dart that find the area of a circle using function. Formula: pi * r * r
double calculateCircleArea(double r) {
  const double pi = 3.147;
  return pi * r * r;
}

void question5() {
  const double radius = 4;
  double circleArea = calculateCircleArea(radius);
  print('Circle area is: $circleArea');
}

String reverseMe(String input) => input.split('').reversed.join();
// Write a program in Dart to reverse a String using function.
void question6() {
  String givenString = 'Hello';
  print(
      'Original String was $givenString and reversed of it is: ${reverseMe(givenString)}');
}

// 'Write a program in Dart to calculate power of a certain number. For e.g 5^3=125'
num calculatePower(num b, num e) {
  return pow(b, e);
}

void question7() {
  num base = 5;
  num exponent = 3;

  print('$base^$exponent= ${calculatePower(base, exponent)}');
}

/* 'Write a function in Dart named add that takes two numbers as arguments 
and returns their sum. */

num add(num a, num b) => a + b;
void question8() {
  num firstNum = 8.354324;
  num secondNum = 9292;
  print('Sum of $firstNum and $secondNum is ${add(firstNum, secondNum)}');
}

/* 
 Write a function in Dart called maxNumber that takes three numbers as arguments and returns the largest number.
 */
num findMax(num a, num b, num c) {
  num newMax = 0;
  newMax = max(a, b);
  newMax = max(newMax, c);
  return newMax;
}

void question9() {
  num first = 4;
  num second = 6;
  num third = 7;

  print(findMax(first, second, third));
}

/* 
 Write a function in Dart called isEven that takes a number as an argument and returns True if the number is even, and False otherwise.
 */

bool isEven(num a) => a % 2 == 0;

void question10() {
  num num1 = 34678;
  num num2 = 8965643;

  print('$num1 is even: ${isEven(num1)}');
  print('$num2 is even: ${isEven(num2)}');
}

/* 
print('Write a function in Dart called createUser with parameters name, age, and isActive, where isActive has a default value of true.')
 */
void createUser(String name, int age, {bool isActive = true}) {
  print('\n Name: $name');
  print('Age: $age');
  print('isActive: $isActive');
}

void question11() {
  createUser('John', 20);
  createUser('dil', 20, isActive: false);
}

// Write a function in Dart called calculateArea that calculates the area of a rectangle. It should take length and width as arguments, with a default value of 1 for both. Formula: length * width.
double rectangleArea({double length = 1, double width = 1}) {
  return length * width;
}

void question12() {
  double length = 2.5;
  double width = 3.5;
  double area = rectangleArea(length: length, width: width);
  print('Area of rantangle is($length * $width): $area');
}

// -------
// -------
// -------
