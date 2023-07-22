import 'dart:io';

class Student {
  String name;
  int age;
  String address;
  String rollNumber;

  Student(this.name, this.age, this.address, this.rollNumber);
}

class StudentManagementSystem {
  List<Student> students = [];

  void addStudent() {
    print("Enter student name:");
    String name = stdin.readLineSync()!;
    
    print("Enter student age:");
    int age = int.parse(stdin.readLineSync()!);

    print("Enter student address:");
    String address = stdin.readLineSync()!;

    print("Enter student roll number:");
    String rollNumber = stdin.readLineSync()!;

    Student newStudent = Student(name, age, address, rollNumber);
    students.add(newStudent);
    print("Student added successfully!");
  }

  void displayAllStudents() {
    if (students.isEmpty) {
      print("No students found.");
    } else {
      print("List of all students:");
      for (var student in students) {
        print("Name: ${student.name}, Age: ${student.age}, Address: ${student.address}, Roll Number: ${student.rollNumber}");
      }
    }
  }

  void run() {
    while (true) {
      print("\nSelect an option:");
      print("1. Add Student");
      print("2. Display All Students");
      print("3. Exit");

      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          addStudent();
          break;
        case 2:
          displayAllStudents();
          break;
        case 3:
          print("Exiting...");
          return;
        default:
          print("Invalid option. Try again.");
      }
    }
  }
}

void main() {
  StudentManagementSystem system = StudentManagementSystem();
  system.run();
}
