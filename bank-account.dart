class BankAccount {
  String _accountHolder;
  double _balance = 0;

  BankAccount(this._accountHolder);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("successfully");
    } else {
      print("invalid amount please try again!");
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      _balance -= amount;
    } else if (amount > _balance) {
      print("Insufficient balance");
    } else {
      print("invalid amount please try again!");
    }
  }
}
