class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  void displayInfo() {
    print("Name: $_name");
    print("Age: $_age");
  }
}

class Student extends Person {
  int _studentId;
  double _grade;

  Student(String name, int age, this._studentId, this._grade)
    : super(name, age);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Student ID: $_studentId");
    print("Grade: $_grade");
  }
}
