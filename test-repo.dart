/*import 's.dart ';
import 'bank-account.dart';
import 'person.dart';*/
/*import 'employee.dart';*/
import 'library.dart';

void main() {
  // Q1

  /*Student student = Student("Ali", 23, 85.5);

  print(student.name);
  print(student.age);
  print(student.grade);

  //Q2

  BankAccount account = BankAccount("Ali");

  account.deposit(1000);
  account.withdraw(200);

  print(account.balance);

  //Q3

  Student student = Student("Ali", 23, 1234, 85.5);

  student.displayInfo();

  //Q4

  List<Employee> employees = [
    FullTimeEmployee("Ahmed", 101, 6000.0),
    PartTimeEmployee("Sara", 102, 50.0, 80),
  ];

  for (var emp in employees) {
    emp.displayInfo();
    print("Calculated Salary: \${emp.calculateSalary()}\n");
  }
*/

  //Q5

  List<LibraryItem> items = [
    Book(1, "Dart Basics", "Ahmed"),
    Book(2, "OOP Guide", "Mona"),
    Magazine(3, "Science", 10),
    Magazine(4, "Technology", 20),
  ];

  Member member = Member("Ali");
  Member anotherMember = Member("Sara");

  member.borrowItem(items[0]);
  member.borrowItem(items[1]);
  member.borrowItem(items[2]);

  member.borrowItem(items[3]);

  anotherMember.borrowItem(items[0]);

  anotherMember.returnItem(items[1]);

  member.displayBorrowedItems();

  member.returnItem(items[0]);

  member.borrowItem(items[3]);

  print("\n=== All Library Items ===");

  for (LibraryItem item in items) {
    item.displayInfo();
  }
}
