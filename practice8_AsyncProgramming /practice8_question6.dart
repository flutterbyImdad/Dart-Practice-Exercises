// Write a Dart program to calculate the sum of two numbers using async/await.
Future<double> sum(double n1, double n2) async {
  return n1 + n2;
}

void main() async {
  double num1 = 2;
  double num2 = 345.3;
  double result = await sum(num1, num2);
  print('Sum of number $num1 and $num2 is: $result');
}
