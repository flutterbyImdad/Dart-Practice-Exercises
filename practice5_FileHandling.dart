import 'dart:io';

/// QUESTIONS FOR PRACTICE 5

void main() {
  print('\n-------------');
  print('Question 1');
  print('Write a dart program to add your name to “hello.txt” file.');
  print('-------------');
  question1();
  print('\n-------------');
  print('Question 2');
  print(
      'Write a dart program to append your friends name to a file that already has your name.');
  print('-------------');
  question2();
  print('\n-------------');
  print('Question 3');
  print('Write a dart program to get the current working directory.');
  print('-------------');
  question3();
  print('\n-------------');
  print('Question 4');
  print(
      'Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.');
  print('-------------');
  question4();
  print('\n-------------');
  print('Question 5');
  print('Write a dart program to create 100 files using loop.');
  print('-------------');
  question5();
  print('\n-------------');
  print('Question 6');
  print(
      'Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file “hello_copy.txt.');
  print('-------------');
  question6();
  print('\n-------------');
  print('Question 7');
  print(
      'Write a dart program to store name, age, and address of students in a csv file and read it.');
  print('-------------');
  question7();
}

// Write a dart program to add your name to “hello.txt” file.
void question1() {
  File file = File('hello.txt');
  file.writeAsStringSync('John');
  print('Content added to file.');
}

// Write a dart program to append your friends name to a file that already has your name.
void question2() {
  File file = File('hello.txt');
  file.writeAsStringSync('\nAlice', mode: FileMode.append);
  print('Friends name is appended to file');
}

// Write a dart program to get the current working directory.
void question3() {
  String currentDirectory = Directory.current.path;
  print('Current working directory is:=> $currentDirectory');
}

// Write a dart program to copy the “hello.txt” file to “hello_copy.txt” file.
void question4() {
  String sourceFilePath = 'hello.txt';
  String destinationFilePath = 'hello_copy.txt';
  try {
    File(sourceFilePath).copy(destinationFilePath);
    print('Content copied successfully');
  } catch (e) {
    print('Error copying File: $e');
  }
}

// Write a dart program to create 100 files using loop.
void question5() {
  String folderName = '100FilesFolder';
  Directory(folderName).createSync(recursive: true);
  for (int i = 0; i <= 100; i++) {
    String fileName = '$folderName/file_$i.txt';
    File(fileName).createSync();
  }
  print('All files created successfully.');
}

// Write a dart program to delete the file “hello_copy.txt”. Make sure you have created the file “hello_copy.txt.
void question6() {
  String fileName = 'hello_copy.txt';
  File file = File(fileName);
  if (file.existsSync()) {
    file.deleteSync();
    print('File $fileName deleted successfully.');
  } else {
    print('File does not exist');
  }
}

// Write a dart program to store name, age, and address of students in a csv file and read it.
void question7() {
  stdout.write("Enter name of student:");
  String? name = stdin.readLineSync();
  stdout.write("Enter age of student: ");
  String? age = stdin.readLineSync();
  stdout.write("Enter age of address: ");
  String? address = stdin.readLineSync();
  File file = File('student.csv');
  file.writeAsStringSync('Name: $name \nAge: $age\nAddress: $address',
      mode: FileMode.append);
}