/// QUESTIONS FOR PRACTICE 1

//Example of capitalize first letter of String
void main() {
  question1();
  question2();
  question3();
  question4();
  question5();
  question6();
  question7();
  question8();
  question9();
  question10();
  question11();
  question12();
}

// Write a program to print your name in Dart.
void question1() {
  print("Imdad Hussain");
}

/**
Write a program to print Hello I am “John Doe” and 
Hello I’am “John Doe” with single and double quotes.
*/
void question2() {
  print("""Hello I am "John Doe" """);
  print('''Hello I'm "John Doe" ''');
}

// Declare constant type of int set value 7.
void question3() {
  const int value = 7;
  print("Value is: $value");
}

// Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100
void question4() {
  num p = 1000000;
  num t = 12;
  num r = 6.5;
  num interestValue = (p * t * r) / 100;
  print("Simple Interest: $interestValue");
}

// Write a program to print a square of a number using user input.
void question5() {
  //will use import 'dart:io'
  num? valueForSquare = 5;
  num result = valueForSquare * valueForSquare;

  print('The square of $valueForSquare is $result');
}

// Write a program to print full name of a from first name and last name using user input.
void question6() {
  String firstName = "Imdad";
  String lastName = "Hussain";
  String fullName = "Full Name is: $firstName $lastName";
  print(fullName);
}

// Write a program to find quotient and remainder of two integers.
void question7() {
  int firstNumber = 17;
  int secondNumber = 5;
  int quotient = (firstNumber ~/ secondNumber);
  num remainder = firstNumber % secondNumber;
  print('quotient is: $quotient');
  print('remainder is: $remainder');
}

// Write a program to swap two numbers.
void question8() {
  int valueOne = 5;
  int valueTwo = 10;
  print('\nBefore Swaping: $valueOne and $valueTwo');
  int temp = valueOne;
  valueOne = valueTwo;
  valueTwo = temp;
  print('After Swaping: $valueOne and $valueTwo');
}

// Write a program in Dart to remove all whitespaces from String.
void question9() {
  String valueWithWhiteSpaces = "H e l l o Sidra";
  print(valueWithWhiteSpaces.replaceAll(' ', ''));
}

// Write a Dart program to convert String to int.
void question10() {
  String value = "15";
  int result = int.parse(value);
  print("${result.runtimeType} $result");
}

/**
 * Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people 
 * */
void question11() {
  num totalBill = 100;
  int numberOfPeople = 2;
  num dvidiedBill = totalBill / numberOfPeople;
  print('Dvidied Bill: $dvidiedBill');
}

/**
Suppose, your distance to office from home is 25 km and you travel 40 km per hour. Write a program to calculate time taken to reach office in minutes. Formula= (distance) / (speed) 
*/
void question12() {
  num distance = 7.6;
  num speed = 40;
  print("Time Taken: ${(distance / speed) * 60}");
}
