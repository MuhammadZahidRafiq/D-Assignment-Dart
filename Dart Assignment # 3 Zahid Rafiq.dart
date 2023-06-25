import 'dart:math';

void main() {
// Q.1: Create a list of names and print all names using list.?

  print("-------1-List of Names------");

  List<String> names = [
    "Zahid",
    "Shahid",
    "Daniyal",
    "Ubaid",
    "Ovais",
    "Adeel",
    "Amir"
  ];

  names.forEach((e) => print(e));

// Q.2: Create an empty list of type string called days.
//  Use the add method to add names of 7 days and print all days.

  print("-------2-Add Method to Add Names of 7 Days-------");

  List<String> days = [];

  days.add("Monday");
  days.add("Monday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("friday");
  days.add("Saturday");
  days.add("Sunday");
  print(days);

// Q.3: Create a list of Days and remove one by one from the end of list.

  print("-------3-Remove One By One Names of 7 Days-------");

  List<String> daysNames = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  print(daysNames);

  daysNames.remove("Monday");
  daysNames.remove("Tuesday");
  daysNames.remove("Wednesday");
  daysNames.remove("Thursday");
  daysNames.remove("Friday");
  daysNames.remove("Saturday");
  daysNames.remove("Sunday");
  print(daysNames);

  // Q.4: Create a list of numbers & write a program to get the
  //  smallest & greatest number from a list.

  print("-------4-List of greatest number from a list------");

  List<int> numbers1 = [5, 100, 3, 8, 2, 7];

  int smallest = numbers1.reduce(min);
  int greatest = numbers1.reduce(max);

  print('Smallest number: $smallest');
  print('Greatest number: $greatest');

// Q.5: Create a map with name, phone keys and store some values to it.
// Use where to find all keys that have length 4.

  print("-------5-List of All keys that have length 4------");

  Map<String, String> phone = {
    "Zain": "0358-2277574",
    "Abid": "0351-2330825",
    "Umar": "0344-3332477",
    "Khan": "0355-2288606",
    "Wali": "0325-2748279",
  };

  List<String> length4 = phone.keys.where((key) => key.length == 4).toList();
  ;

  print(length4);

// Q.6: Create Map variable name world then inside it create countries Map,
//Key will be the name country & country value will have another map having
//capitalCity, currency and language to it. by using any country key print all
//the value of Capital & Currency.

  print("-------6-List of Value of Capital & Currency.------");

  Map world = {
    "India": {
      "capitalCity": "New Delhi",
      "currency": "Indian Rupee",
      "language": "Hindi",
    },
    "United States": {
      "capitalCity": "Washington, D.C.",
      "currency": "United States Dollar",
      "language": "English",
    },
    "United Kingdom": {
      "capitalCity": "London",
      "currency": "British Pound",
      "language": "English",
    },
  };
  print(world["India"]["capitalCity"]);
  print(world["India"]["currency"]);

// Q.7:
// Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };

// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.

  print("-------7-List of fri' to Expenses------");

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses['fri'] = 5000.0;
  }

  print(expenses);

// Q.8: remove all false values from below list by using removeWhere or
//retainWhere property.

// List<Map<String, bool>> usersEligibility = [
// {'name': 'John', 'eligible': true},
// {'name': 'Alice', 'eligible': false},
// {'name': 'Mike', 'eligible': true},
// {'name': 'Sarah', 'eligible': true},
// {'name': 'Tom', 'eligible': false},
// ];

  print("-------8-List of Remove all False Values.------");
  List<Map> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility.removeWhere((user) => user['eligible'] == false);

  print(usersEligibility);

// Q.9: Given a list of integers, write a dart code that returns
// the maximum value from the list.

  print("-------9-List of Maximum value.------");

  List<int> numberlist = [10, 5, 8, 3, 121, 7];

  int maxnumber = numberlist.reduce(max);
  print('Greatest number: $maxnumber');

// Q.10: Write a Dart code that takes in a list of strings and removes any
// duplicate elements, returning a new list without duplicates. The order of
//  elements in the new list should be the same as in the original list.

  print("-------10-List of Removes Any Duplicate Elements.------");

  List<String> listNum = [
    "Waheed",
    "Shahid",
    "Daniyal",
    "Amir",
    "Adeel",
    "Hamid",
    "Owais",
    "Ubaid",
    "Zahid"
  ];
  List<String> firstN = listNum;
  print(firstN.take(5));

// Q 11: Write a Dart code that takes in a list and an integer n as parameters.
// The program should print a new list containing the first n elements from the
// original list.
  print("-------11-List an integer n as parameters.------");
  List<int> numbersLIST = [10, 5, 2, 7, 3, 1, 8, 9, 6];
  numbersLIST.sort();
  print(numbersLIST);
// Q.12: Write a Dart code that takes in a list of strings and prints a new
//list with the elements in reverse order. The original list should
//remain unchanged.
  print("-------12-List of the elements in reverse order------");
  List<String> strings = ["a", "b", "c", "d", "e"];

  List<String> reversed = [];

  for (int i = strings.length - 1; i >= 0; i--) {
    reversed.add(strings[i]);
  }

  print(reversed);

// Q.13: Implement a code that takes in a list of integers and returns a new
//list containing only the unique elements from the original list. The order of
//elements in the new list should be the same as in the original list.
  print("-------13-List of the Unique elements ------");
  List<int> numbers = [5, 2, 8, 2, 1, 8, 4, 5, 9, 1];
  List<int> uniqueNumbers = getUniqueElements(numbers);
  print("List with unique elements: $uniqueNumbers");
// Q.14: Write a Dart code that takes in a list of integers and prints a
//new list with the elements sorted in ascending order. The original list
//should remain unchanged.
  print("-------14-List of the sorted in ascending order------");
  List<int> original = [5, 3, 2, 4, 1, 5, 4];
  original.sort();
  print(original);

// Implement a Dart code that uses the where() method to filter out negative
//numbers from a list of integers. The program should take in the original
//list as a parameter and print a new list containing only the positive numbers.
  print("-------15-List of the filter out negativenumber------");
  List<int> original2List = [5, -2, 8, -3, 0, 7, -1, 4, -6];
  List<int> positiveNumbers = getPositiveNumbers(original2List);
  print("List with positive numbers: $positiveNumbers");

// Q.16: Implement a Dart code that uses the where() method to filter out
//odd numbers from a list of integers. The program should take in the original
//list as a parameter and print a new list containing only the even numbers.
  print("-------16-List of the filter out odd number------");
  List<int> originalList = [5, 2, 8, 3, 10, 7, 6, 4, 9];
  List<int> evenNumbers = getEvenNumbers(originalList);
  print("List with even numbers: $evenNumbers");

// Q.17: Given a list of integers, write a Dart code that uses the map() method to
//  create a new list with each value squared. The program should take in the
//  original list as a parameter and print the new list.
  print("-------17-List of the each value squared.------");
  List<int> originalsqList = [2, 3, 5, 7, 10];
  List<int> squaredList = squareValues(originalsqList);
  print("Squared List: $squaredList");

// Q.18: Create a map named "person" with the following key-value pairs: "name"
// as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if
// the person is both a student and over 18 years old. Print "Eligible" if both
//conditions are true, otherwise print "Not eligible".
  print(
      "-------18-check if the person is both a student and over 18 years old.------");
  Map<String, dynamic> person = {
    "name": "John Doe",
    "age": 20,
    "occupation": "student",
  };
  if (person["age"] >= 18 && person["occupation"] == "student") {
    print("The person is both a student and over 18 years old.");
  } else {
    print("The person is not both a student and over 18 years old.");
  }

// Q.19: Given a map representing a product with keys "name", "price", and
//"quantity", write Dart code to check if the product is in stock. If the
//quantity is greater than 0, print "In stock", otherwise print "Out of stock".
  print("-------19-List of the Stock Quantity.------");
  Map<String, dynamic> product = {
    "name": "Mini Fan Product",
    "price": 10.99,
    "quantity": 0,
  };

  checkStock(product);

// Q.20: Create a map named "car" with the following key-value pairs:
//"brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart
//code to check if the car is a sedan and red in color. Print "Match"
//if both conditions are true, otherwise print "No match".
  print("-------20-List of Condition Match.------");
  Map<String, dynamic> car = {
    "brand": "Toyota",
    "color": "Red",
    "isSedan": true,
  };

  if (car["isSedan"] == true && car["color"] == "Red") {
    print("Match");
  } else {
    print("No match");
  }
// Q.21: Given a map representing a user with keys "name", "isAdmin", and
// "isActive", write Dart code to check if the user is an active admin.
//If the user is both an admin and active, print "Active admin",
//otherwise print "Not an active admin".
  print("-------21-List of the User is an Admin.------");
  Map<String, dynamic> user = {
    "name": "John Doe",
    "isAdmin": true,
    "isActive": true,
  };

  if (user["isAdmin"] == true && user["isActive"] == true) {
    print("Active admin");
  } else {
    print("Not an active admin");
  }

// Q.22: Given a map representing a shopping cart with keys as product names
// and values as quantities, write Dart code to check if a product named
//"Apple" exists in the cart. Print "Product found" if it exists, otherwise
//print "Product not found".
  print("-------22-List of Products.------");
  Map<String, int> shoppingCart = {
    "Banana": 2,
    "Orange": 3,
    "Apple": 5,
    "Mango": 1,
  };

  if (shoppingCart.containsKey("Apple")) {
    print("Product found");
  } else {
    print("Product not found");
  }
}

List<int> getUniqueElements(List<int> numbers) {
  List<int> uniqueList = [];

  for (var number in numbers) {
    if (!uniqueList.contains(number)) {
      uniqueList.add(number);
    }
  }

  return uniqueList;
}

List<int> getPositiveNumbers(List<int> numbers) {
  List<int> positiveList = numbers.where((number) => number > 0).toList();
  return positiveList;
}

List<int> getEvenNumbers(List<int> numbers) {
  List<int> evenList = numbers.where((number) => number % 2 == 0).toList();
  return evenList;
}

List<int> squareValues(List<int> numbers) {
  List<int> squaredList = numbers.map((number) => number * number).toList();
  return squaredList;
}

void checkStock(Map<String, dynamic> product) {
  String name = product["name"];
  double price = product["price"];
  int quantity = product["quantity"];

  if (quantity > 0) {
    print("$name - Price: $price - In stock");
  } else {
    print("$name - Price: $price - Out of stock");
  }
}
