/* Write a program in dart that uses Future class to perform multiple asynchronous operations,
wait for all of them to complete, and then print the results. */

Future<String> fetchData1() async {
  await Future.delayed(Duration(seconds: 2));
  return 'First fetch Data';
}

Future<String> fetchData2() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Second fetch Data';
}

void main() async {
  print("start fetching data and wait here....");
  List<Future> futures = [fetchData1(), fetchData2()];
  List result = await Future.wait(futures);
  print('Result of first Future: ${result.first}');
  print('Result of second Future: ${result.last}');
}
