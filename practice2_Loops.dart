//Example of capitalize first letter of String
void main() {
  print('\n----------------');
  print('Question No. 1');
  print('----------------');
  question1();
  print('\n----------------');
  print('Question No. 2');
  print('----------------');
  question2();
  print('\n----------------');
  print('Question No. 3');
  print('----------------');
  question3();
  print('\n----------------');
  print('Question No. 4');
  print('----------------');
  question4();
  print('\n----------------');
  print('Question No. 5');
  print('----------------');
  question5();
  print('\n----------------');
  print('Question No. 6');
  print('----------------');
  question6();
  print('\n----------------');
  print('Question No. 7');
  print('----------------');
  question7();
  print('\n----------------');
  print('Question No. 8');
  print('----------------');
  question8();
  print('\n----------------');
  print('Question No. 9');
  print('----------------');
  question9();
}

// Write a dart program to check if the number is odd or even.
void question1() {
  num oddOrEvenNumber = 8;
  if (oddOrEvenNumber % 2 == 0) {
    print('Number: $oddOrEvenNumber is an even Number');
  } else {
    print('Number: $oddOrEvenNumber is an odd number');
  }
}

// Write a dart program to check whether a character is a vowel or consonant.
void checkingChar(String c) {
  String _ch = c.toLowerCase();
  if (_ch == 'a' || _ch == 'e' || _ch == 'i' || _ch == 'o' || _ch == 'u') {
    print('Character $c is a vowel');
  } else if (_ch.codeUnitAt(0) >= 97 && _ch.codeUnitAt(0) <= 122) {
    print('Character $c is a consonant');
  } else {
    print('Character $c is neither consonant nor vowel');
  }
}

void question2() {
  String checkChar1 = 'g';
  String checkChar2 = 'o';
  String checkChar3 = '4';
  checkingChar(checkChar1);
  checkingChar(checkChar2);
  checkingChar(checkChar3);
}

// Write a dart program to check whether a number is positive, negative, or zero.
void question3() {
  num myNumber = -1;
  switch (myNumber.sign) {
    case 0:
      print('Number $myNumber is zero.');
      break;
    case -1:
      print('Number $myNumber is Negative.');
      break;
    case 1:
      print('Number $myNumber is Positive.');
      break;
    default:
      {
        print('This is not a number');
      }
  }
}

// Write a dart program to print your name 100 times.
void question4() {
  for (int i = 0; i <= 100; i++) {
    print('$i: Imdad Hussain');
  }
}

// Write a dart program to calculate the sum of natural numbers.
void question5() {
  int limit = 10;
  int sum = 0;
  for (int i = 0; i <= limit; i++) {
    sum += i;
  }
  print('Sum of Natural numbers with limit $limit is: $sum');
}

// Write a dart program to generate multiplication tables of 5.
void question6() {
  int limit = 10;
  int tableOf = 5;
  for (int i = 0; i <= limit; i++) {
    print('$tableOf X $i = ${tableOf * i}');
  }
}

// Write a dart program to generate multiplication tables of 1-9.
void question7() {
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 10; j++) {
      print('$i * $j = ${i * j}');
    }
    print(' ');
  }
}

/** Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
 */
void calculate(operator, num1, num2) {
  print('Calculating this $num1 $operator $num2');
  double result = 0;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print("Error: Invalid operator.");
      break;
  }
  print('Result is: $result');
}

// Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
void question8() {
  String plus = '+';
  String sub = '-';
  String multiply = '*';
  String divide = '/';
  num numberOne = 5;
  num numberTwo = 10;

  calculate(plus, numberOne, numberTwo);
  calculate(sub, numberOne, numberTwo);
  calculate(multiply, numberOne, numberTwo);
  calculate(divide, numberOne, numberTwo);
}

// Write a dart program to print 1 to 100 but not 41.
void question9() {
  for (int i = 1; i <= 10; i++) {
    if (i == 4) {
      print('\n--Skiping 4--\n');
      continue;
    }
    print('Printing i: $i');
  }
}
