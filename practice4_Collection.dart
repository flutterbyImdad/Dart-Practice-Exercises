import 'dart:io';

/// QUESTIONS FOR PRACTICE 4

void main() {
  print('\n-------------');
  print('Question 1');
  print('Create a list of names and print all names using list.');
  print('-------------');
  question1();
  print('\n-------------');
  print('Question 2');
  print('Create a set of fruits and print all fruits using loop.');
  print('-------------');
  question2();
  print('\n-------------');
  print('Question 3');
  print('-------------');
  print(
      'Create a program thats reads list of expenses amount using user input and print total.');
  question3();
  print('\n-------------');
  print('Question 4');
  print(
      'Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.');
  question4();
  print('\n-------------');
  print('Question 5');
  print(
      'Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.');
  question5();
  print('\n-------------');
  print('Question 6');
  print(
      '''Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.''');
  question6();
  print('\n-------------');
  print('Question 7');
  print(
      '''Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.''');
  question7();
  print('\n-------------');
  print('Question 8');
  print(
      '''Create a simple to-do application that allows user to add, remove, and view their task.''');
  question8();
}

// Create a list of names and print all names using list.
void question1() {
  List<String> names = ['name1', 'name2', 'name3', 'name4'];
  print(names);
}

// Create a set of fruits and print all fruits using loop.
void question2() {
  Set<String> fruits = {'fruit1', 'fruit2', 'fruit3', 'fruit4'};
  fruits.forEach((a) => print(a));
}

// Create a program thats reads list of expenses amount using user input and print total.
void printTotal(List<double> exp) {
  print('expenses are: $exp');
}

void question3() {
  List<double> expenses = [
    345,
    324.23,
    23423,
    23,
    543534,
    34.23,
    2342,
    2342.2324
  ];
  printTotal(expenses);
}

// Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
void question4() {
  List<String> days = [];

  days.add('Sun');
  days.add('Mon');
  days.add('Tue');
  days.add('Wed');
  days.add('Thu');
  days.add('Fri');
  days.add('Sat');
  print('Days of week: $days');
}

// Add your 7 friend names to the list. Use where to find a name that starts with alphabet a.
void question5() {
  List<String> friends = [
    'frd1',
    'frd2',
    'frd3',
    'Afrd4',
    'frd5',
    'frd6',
    'frd7'
  ];

  String frdFinder = friends.where((name) => name.startsWith('A')).first;
  print(frdFinder);
}

// Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
void question6() {
  Map<String, dynamic> person = {"Name": 'john', "Age": 25, "country": 'Pak'};
  print('Map before update $person');
  person["country"] = "Rom";
  print('Map after update $person');
}

// Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
void question7() {
  Map<String, String> contacts = {
    'John': '1234567890',
    'Alice': '9876543210',
    'Bob': '5678901234',
    'Charlie': '3456789012'
  };
  Iterable<String> keysWithLengthFour =
      contacts.keys.where((key) => key.length == 4);
  print('Keys with length 4:');
  keysWithLengthFour.forEach((key) {
    print(key);
  });
}

// Create a simple to-do application that allows user to add, remove, and view their task.

void question8() {
  // Create an empty list to store tasks
  List<String> tasks = [];

  // Infinite loop to continuously prompt user for input
  while (true) {
    print('Enter an option: (add / remove / view / exit)');
    String? option = stdin.readLineSync();

    switch (option) {
      case 'add':
        print('Enter task to add:');
        String? task = stdin.readLineSync();
        tasks.add(task!);
        print('Task added: $task');
        break;
      case 'remove':
        print('Enter task to remove:');
        String? taskToRemove = stdin.readLineSync();
        if (tasks.remove(taskToRemove)) {
          print('Task removed: $taskToRemove');
        } else {
          print('Task not found: $taskToRemove');
        }
        break;
      case 'view':
        print('Tasks:');
        tasks.forEach((task) => print('- $task'));
        break;
      case 'exit':
        print('Exiting...');
        return; // Exit the program
      default:
        print('Invalid option. Please try again.');
        break;
    }
  }
}
