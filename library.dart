class LibraryItem {
  int _id;
  String _title;
  bool _isBorrowed = false;

  LibraryItem(this._id, this._title);

  int get id => _id;
  String get title => _title;
  bool get isBorrowed => _isBorrowed;

  bool borrowItem() {
    if (_isBorrowed) {
      print("Item is already borrowed");
      return false;
    }

    _isBorrowed = true;
    print("Item borrowed successfully");
    return true;
  }

  bool returnItem() {
    if (!_isBorrowed) {
      print("Item is not borrowed");
      return false;
    }

    _isBorrowed = false;
    print("Item returned successfully");
    return true;
  }

  void displayInfo() {
    print("ID: $_id");
    print("Title: $_title");
    print("Status: ${_isBorrowed ? 'Borrowed' : 'Available'}");
  }
}

class Book extends LibraryItem {
  String _author;

  Book(int id, String title, this._author) : super(id, title);

  @override
  void displayInfo() {
    print("\n--- Book ---");
    super.displayInfo();
    print("Author: $_author");
  }
}

class Magazine extends LibraryItem {
  int _issueNumber;

  Magazine(int id, String title, this._issueNumber) : super(id, title);

  @override
  void displayInfo() {
    print("\n--- Magazine ---");
    super.displayInfo();
    print("Issue Number: $_issueNumber");
  }
}

class Member {
  String _name;
  List<LibraryItem> _borrowedItems = [];

  Member(this._name);

  bool borrowItem(LibraryItem item) {
    if (_borrowedItems.length >= 3) {
      print("Cannot borrow more than 3 items");
      return false;
    }

    if (item.isBorrowed) {
      print("This item is already borrowed");
      return false;
    }

    if (item.borrowItem()) {
      _borrowedItems.add(item);
      return true;
    }

    return false;
  }

  bool returnItem(LibraryItem item) {
    if (!_borrowedItems.contains(item)) {
      print("You have not borrowed this item");
      return false;
    }

    if (item.returnItem()) {
      _borrowedItems.remove(item);
      return true;
    }

    return false;
  }

  void displayBorrowedItems() {
    print("\nItems borrowed by $_name:");

    if (_borrowedItems.isEmpty) {
      print("No borrowed items");
      return;
    }

    for (LibraryItem item in _borrowedItems) {
      item.displayInfo();
    }
  }
}
