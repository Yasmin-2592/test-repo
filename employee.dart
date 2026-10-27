class Employee {
  String name;
  int employeeId;

  Employee(this.name, this.employeeId);

  double calculateSalary() => 0.0;

  void displayInfo() {
    print("ID: $employeeId, Name: $name");
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, int employeeId, this.monthlySalary)
    : super(name, employeeId);

  @override
  double calculateSalary() => monthlySalary;
}

class PartTimeEmployee extends Employee {
  double hourlyRate;
  int hoursWorked;

  PartTimeEmployee(
    String name,
    int employeeId,
    this.hourlyRate,
    this.hoursWorked,
  ) : super(name, employeeId);

  @override
  double calculateSalary() => hourlyRate * hoursWorked;
}
