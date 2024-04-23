// Write a program to print current time after 2 seconds using Future.delayed().
void main() {
  Future.delayed(Duration(seconds: 2), () {
    DateTime _now = DateTime.now();
    print(
        'Time now: ${_now.hour}:${_now.minute}:${_now.second}.${_now.millisecond}');
  });
  print('Starting and will wait for 2 seconds....');
}
