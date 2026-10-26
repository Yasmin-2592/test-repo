void main() {
  //Q1

  double mark1 = 80;
  double mark2 = 70;
  double mark3 = 60;

  double total = calculateTotal(mark1, mark2, mark3);
  double average = calculateAverage(total);
  String result = getResult(average);

  print("Total: $total");
  print("Average: $average");
  print("Result: $result");

  //Q2

  Student student1 = Student("Ahmed", 20, 85);
  Student student2 = Student("sara", 19, 95);
  Student student3 = Student("omar", 21, 40);

  List<Student> students = [student1, student2, student3];

  for (Student student in students) {
    student.displayInfo();
    print("passed: ${student.isPassed()}");
    print("------------------");
  }
  Student topstudent = findTopStudent(students);

  print("Top Student: ");

  //Q3

  BankAccount account = BankAccount("Ahmed", 1000.0);

  print("Account Holder: ${account.accountHolder}");
  print("Balance: ${account.balance}");

  account.deposit(500.0);
  account.withdraw(200.0);

  account.balance = 2000.0;
  print("Updated Balance: ${account.balance}");

  account.withdraw(5000.0);
  account.balance = -100.0;

  // Q4

  void main() {
    Product p1 = Product("Laptop", 1, 20000, 5);
    Product p2 = Product("Mouse", 2, 500, 10);
    Product p3 = Product("Keyboard", 3, 1000, 4);

    List<Product> products = [p1, p2, p3];

    print("Product: ${p1.name}");
    print("ID: ${p1.id}");
    print("Price: ${p1.price}");
    print("Quantity: ${p1.quantity}");
    print("Total Value: ${p1.calculateTotalValue()}");

    p1.updateStock(-2);
    print("Quantity after update: ${p1.quantity}");

    Product? result = findProduct(products, 2);

    if (result != null) {
      print("Found Product: ${result.name}");
    } else {
      print("Product not found.");
    }

    print("All Products Total Value: ${calculateAllProductsValue(products)}");
  }
}

double calculateTotal(double a, double b, double c) => a + b + c;

double calculateAverage(double total) => total / 3;

String getResult(double average) {
  if (average >= 50) {
    return "pass";
  } else {
    return "fail";
  }
}

class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
  }

  bool isPassed() => grade >= 50;
}

Student findTopStudent(List<Student> students) {
  Student topStudent = students[0];

  for (Student student in students) {
    if (student.grade > topStudent.grade) {
      topStudent = student;
    }
  }
  return topStudent;
}

class BankAccount {
  String accountHolder;
  double _balance;

  BankAccount(this.accountHolder, double balance)
    : _balance = balance >= 0 ? balance : 0;

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Error: Balance cannot be negative");
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposit successful. Balance: $_balance");
    } else {
      print("Error: Deposit amount must be positive");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("Error: Withdrawal amount must be positive");
    } else if (amount > _balance) {
      print("Error: Insufficient balance");
    } else {
      _balance -= amount;
      print("Withdrawal successful. Balance: $_balance");
    }
  }
}

class Product {
  String name;
  int id;
  double _price;
  int _quantity;

  Product(this.name, this.id, double price, int quantity)
    : _price = price >= 0 ? price : 0,
      _quantity = quantity >= 0 ? quantity : 0;

  double get price => _price;

  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("Error: Price cannot be negative");
    }
  }

  int get quantity => _quantity;

  set quantity(int value) {
    if (value >= 0) {
      _quantity = value;
    } else {
      print("Error: Quantity cannot be negative");
    }
  }

  void updateStock(int amount) {
    if (_quantity + amount >= 0) {
      _quantity += amount;
    } else {
      print("Error: Quantity cannot be negative");
    }
  }

  double calculateTotalValue() {
    return _price * _quantity;
  }
}

Product? findProduct(List<Product> products, int id) {
  for (Product product in products) {
    if (product.id == id) {
      return product;
    }
  }
  return null;
}

double calculateAllProductsValue(List<Product> products) {
  double total = 0;

  for (Product product in products) {
    total += product.calculateTotalValue();
  }

  return total;
}
