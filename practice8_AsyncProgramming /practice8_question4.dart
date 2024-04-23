import 'dart:async';
import 'dart:convert';
import 'dart:io';

// Write a program in dart that reads csv file and print it’s content.
Future<void> readAndPrintCsvFile(String path) async {
  File file = File(path);
  Stream<List<int>> inputStream = file.openRead();

  // Decode and parse CSV data line by line
  await for (String line
      in inputStream.transform(utf8.decoder).transform(LineSplitter())) {
    List<String> columns = line.split(',');

    // Print each row of CSV data
    print(columns.join(', ')); // Join each column with a comma and print
  }
}

void main() {
  readAndPrintCsvFile('student.csv')
      .then((_) => print('File reading completed successfully'))
      .catchError((error) {
    print('Error happened while reading file: $error');
    return Future<
        Null>.value(); // Return a Future<Null> to satisfy the signature
  });
}
