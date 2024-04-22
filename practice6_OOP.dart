import 'dart:io';

/// QUESTIONS FOR PRACTICE 6

void main() {
  print('\n-------------');
  print('Question 1');
  print(
      'Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.');
  print('-------------');
  question1();
  print('\n-------------');
  print('Question 2');
  print(
      'Write a dart program to create a class House with properties [id, name, price]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.');
  print('-------------');
  question2();
  print('\n-------------');
  print('Question 3');
  print(
      'Write a dart program to create an enum class for gender [male, female, others] and print all values.');
  print('-------------');
  question3();
  print('\n-------------');
  print('Question 4');
  print(
      'Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String. Create an object of a Cat and print all details.');
  print('-------------');
  question4();
  print('\n-------------');
  print('Question 5');
  print(
      'Write a dart program to create a class Camera with private properties [id, brand, color, price]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.');
  print('-------------');
  question5();
  print('\n-------------');
  print('Question 6');
  print(
      'Create an interface called Bottle and add a method to it called open(). Create a class called CokeBottle and implement the Bottle and print the message “Coke bottle is opened”. Add a factory constructor to Bottle and return the object of CokeBottle. Instantiate CokeBottle using the factory constructor and call the open() on the object.');
  print('-------------');
  question6();
  print('\n-------------');
  print('Question 7');
  print(
      'Create a simple quiz application using oop that allows users to play and view their score.');
  print('-------------');
  question7();
}

// Write a dart program to create a class Laptop with properties [id, name, ram] and create 3 objects of it and print all details.
class Laptop {
  int id;
  String name;
  String ram;
  Laptop(this.id, this.name, this.ram);

  void display() {
    print("ID: $id");
    print("Name: $name");
    print("Ram: $ram");
    print("");
  }
}

void question1() {
  Laptop laptop1 = Laptop(111, "John", "2GB");
  Laptop laptop2 = Laptop(222, "Alice", "8GB");
  Laptop laptop3 = Laptop(333, "Alex", "16GB");

  print("Details of Laptop 1");
  laptop1.display();
  print("Details of Laptop 2");
  laptop2.display();
  print("Details of Laptop 3");
  laptop3.display();
}

// Write a dart program to create a class House with properties [id, name, price]. Create a constructor of it and create 3 objects of it. Add them to the list and print all details.
class House {
  int id;
  String name;
  double price;
  House(this.id, this.name, this.price);
}

void question2() {
  House house1 = House(111, "House 111", 222.34);
  House house2 = House(222, "House 222", 34534.234);
  House house3 = House(333, "House 333", 3453453.234);

  List<House> houses = [house1, house2, house3];
  for (House house in houses) {
    print("House Id: ${house.id}");
    print("House Name: ${house.name}");
    print("House Price:${house.price}");
    print("");
  }
}

// Write a dart program to create an enum class for gender [male, female, others] and print all values.
enum Gender { male, female, others }

void question3() {
  print('Genders in enum class are as follow');
  Gender.values.forEach((gender) {
    print(gender.name);
  });
}

//Write a dart program to create a class Animal with properties [id, name, color]. Create another class called Cat and extends it from Animal. Add new properties sound in String. Create an object of a Cat and print all details.
class Animal {
  int id;
  String name;
  String color;
  Animal({required this.id, required this.name, required this.color});
}

class Cat extends Animal {
  String sound;
  Cat(
      {required int id,
      required String name,
      required String color,
      required this.sound})
      : super(id: id, name: name, color: color);
}

void question4() {
  Cat cat = Cat(id: 111, name: "Sparky", color: 'red', sound: 'meow');
  print("Cat Details");
  print(
      "ID: ${cat.id}, name: ${cat.name}, color: ${cat.color}, sound: ${cat.sound}");
}

// Write a dart program to create a class Camera with private properties [id, brand, color, price]. Create a getter and setter to get and set values. Also, create 3 objects of it and print all details.
class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;
  Camera(this._id, this._brand, this._color, this._price);

  int get getId => _id;
  void set setId(int id) => this._id = id;

  String get getBrand => _brand;
  void set setBrand(String brand) => this._brand = brand;

  String get getColor => _color;
  void set setColor(String color) => this._color = color;

  double get getPrice => _price;
  void set setPrice(double price) => this._price = price;
}

void question5() {
  Camera camera1 = Camera(1, 'GoPro', 'black', 234.23);
  Camera camera2 = Camera(2, 'Sony', 'red', 234.23);
  Camera camera3 = Camera(3, 'GoPro', 'blue', 234.23);
  print('Cameras details');
  print(
      '${camera1.getId}, ${camera1.getBrand}, ${camera1.getColor}, ${camera1.getPrice}');
  print(
      '${camera2.getId}, ${camera2.getBrand}, ${camera2.getColor}, ${camera2.getPrice}');
  print(
      '${camera3.getId}, ${camera3.getBrand}, ${camera3.getColor}, ${camera3.getPrice}');
}

// Create an interface called Bottle and add a method to it called open(). Create a class called CokeBottle and implement the Bottle and print the message “Coke bottle is opened”. Add a factory constructor to Bottle and return the object of CokeBottle. Instantiate CokeBottle using the factory constructor and call the open() on the object.
abstract class Bottle {
  factory Bottle() => CokeBottle();
  void open();
}

class CokeBottle implements Bottle {
  void open() {
    print('Coke bottle is opened.');
  }
}

void question6() {
  Bottle bottle = Bottle();
  bottle.open();
}

// Create a simple quiz application using oop that allows users to play and view their score.ˇ
class Question {
  String text;
  bool answer;
  Question(this.text, this.answer);
}

class Quiz {
  List<Question> questions = [];
  int _score = 0;

  int get TotalScore => _score;

  void addQuestion(String text, bool answer) {
    questions.add(Question(text, answer));
  }

  void displayQuestion() {
    for (Question question in questions) {
      print(question.text);
      String userInput = stdin.readLineSync()!.toLowerCase();
      bool userAnswer = userInput == 'true' ||
          userInput == 't' ||
          userInput == "yes" ||
          userInput == 'y';
      checktAnser(userAnswer, question.answer);
    }
  }

  void checktAnser(bool userAnswer, bool correctAnswer) {
    if (userAnswer == correctAnswer) {
      _score += 1;
      print('Correct Answer');
    } else {
      print('Wrong Answer');
    }
  }
}

void question7() {
  Quiz quiz = Quiz();
  quiz.addQuestion('Are you learning Dart?', true);
  quiz.addQuestion("is Bucharest is a capital of Germany?", false);
  quiz.addQuestion("Do you need bonus point?", true);

  quiz.displayQuestion();

  print("Your Total Score is: ${quiz.TotalScore}");
}
