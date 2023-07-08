import 'dart:io';

void main() {
// Q.1 - Write a program that takes a list of numbers as input and prints the
// even numbers in the list using a for loop.
// Example:
// Input: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
// Output: 2 4 6 8 10
  print("-------1- even numbers in the list -------");
  List<int> numberlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (int number in numberlist) {
    if (number % 2 == 0) {
      print(number);
    }
  }

//Q. 2 - Write a program that prints the Fibonacci sequence up to a given
// number using a for loop.
// Example:
// Input: 10
// Output: 0 1 1 2 3 5 8

  print("-------2- Fibonacci sequence numbers in the list -------");
  int putnumber = 10;
  int n1 = 0;
  int n2 = 1;
  int fibonaccinumber;
  for (int i = 0; n1 <= putnumber; i++) {
    fibonaccinumber = n1 + n2;
    print(n1);
    n1 = n2;
    n2 = fibonaccinumber;
  }

//Q. 3 - Implement a code that checks whether a given number is prime or not.
// Example:
// Input: 17
// Output: 17 is a prime number.

  print("-------3- Prime Number -------");
  bool primenumberbool = false;
  int primenumber = 17;

  while (!primenumberbool) {
    if (primenumber % 2 != 0) {
      print("$primenumber This is Prime Number");
    } else {
      print("$primenumber This is Not Prime Number");
    }
    primenumberbool = true;
  }

//Q. 4 - Implement a code that finds the factorial of a number using a while
// loop or for loop.
// Example:
// Input: 5
// Output: Factorial of 5 is 120
  print("-------4- Factorial Of A Number -------");
  int numberfactorial = 5;
  int factorial = 1;
  for (int a = 1; a <= numberfactorial; a++) {
    factorial *= a;
  }
  print('The factorial of $numberfactorial is $factorial');

//Q. 5 - Write a program that calculates the sum of all the digits in a given
// number using a while loop.
// Example:
// Input: 12345
// Output: Sum of digits: 15

  print("-------5- Calculates The Sum Of All The digits Number -------");

  int numberdigital = 12345;
  int sum = 0;
  while (numberdigital > 0) {
    int digit = numberdigital % 10;
    sum += digit;
    numberdigital = numberdigital ~/ 10;
  }
  print('Sum of digits: $sum');

//Q.6 - Implement a code that finds the largest element in a list using a for
// loop.
// Example:
// Input: [3, 9, 1, 6, 4, 2, 8, 5, 7]
// Output: Largest element: 9

  print("-------6- largest element in a list -------");

  var elementList = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  var largestelement = elementList[0];
  for (var i = 0; i < elementList.length; i++) {
    if (elementList[i] > largestelement) {
      largestelement = elementList[i];
    }
  }
  print("Largest element: : $largestelement");

//Q.7 - Write a program that prints the multiplication table of a given number
// using a for loop.
// Example:
// Input: 5
// Output:
// 5 x 1 = 5
// 5 x 2 = 10
// 5 x 3 = 15
// ...
// 5 x 10 = 50

  print("-------7- Multiplication Table 5  -------");
  var table = 5;
  for (var i = 1; i <= 10; i++) {
    print("$table X $i = ${table * i}");
  }

//Q.9 - Implement a function that checks if a given string is a palindrome.
//   Example:
// Input: "radar"
// Output: "radar" is a palindrome.

  print("-------- 9- String Is A Palindrome Or Not  -------");

  String? original = "radar";
  String? reverse = original.split('').reversed.join('');
  if (original == reverse) {
    print('"$original" is a Palindrome.');
  } else {
    print('"$original" is a not Palindrome.');
  }

// Write a program to display the cube of the number up to an integer.
// Test Data :
// Input number of terms : 5
// Expected Output :
// Number is : 1 and cube of the 1 is :1
// Number is : 2 and cube of the 2 is :8
// Number is : 3 and cube of the 3 is :27
// Number is : 4 and cube of the 4 is :64
// Number is : 5 and cube of the 5 is :125

  print("-------- 10- Display The Cube of The Number  -------");

  var cubenumber = 5;
  for (var i = 1; i <= cubenumber; i++) {
    print("Number is : $i and cube of the $i is :${i * i * i}");
  }
// Write a program to display a pattern like a right angle triangle using an
// asterisk using loop.
// The pattern like :
// *
// **
// ***
// ****

  print("-------- 11- Right Triangle Star Pattern  -------");
  int rows = 4;
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.writeln();
  }

//Q.12 - Write a program to display a pattern like a right angle triangle with a
// number using loop.
// The pattern like :
// 1
// 12
// 123
// 1234

  print("-------- 12- Right Triangle Number Pattern  -------");
  int rightnumber = 4;
  for (int i = 1; i <= rightnumber; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    stdout.writeln();
  }
//Q.13 -  Write a program to make such a pattern like a right angle triangle with
// a number which will repeat a number in a row.
// The pattern like :
// 1
// 22
// 333
// 4444

  print("-------- 13-Right Triangle Number Pattern(Same Number in Row)-------");
  int rightSameNum = 4;
  for (int i = 1; i <= rightSameNum; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("$i ");
    }
    stdout.writeln();
  }
  print("-------14-Right Triangle Number Pattern(Increament in Number)------");
  int rightIncreaseNum = 4;
  int numberprint = 1;
  for (int i = 1; i <= rightIncreaseNum; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("${numberprint++} ");
    }
    stdout.writeln();
  }
//Q.15 - Write a program to make a pyramid pattern with numbers increased by
// 1
// 2 3
// 4 5 6
// 7 8 9 10

  print("-------15-Pyramid Number Pattern------");
  int pyramidNumber = 5;
  int pyramidprint = 1;
  for (int i = 1; i < pyramidNumber; i++) {
    for (int a = (pyramidNumber - i); a > 1; a--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("${pyramidprint++} ");
    }
    stdout.writeln();
  }

//Q.16 - Write a program to make such a pattern as a pyramid with an asterisk.

  print("-------16 - Pyramid star pattern------");

  int pyramid = 5;
  for (int i = 1; i < pyramid; i++) {
    for (int a = (pyramid - i); a > 1; a--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
//Q.17 - Write a program that asks the user for their email and password. If the
// email and password match a predefined set of credentials, print "User
// login successful." Otherwise, keep asking for the email and password
// until the correct credentials are provided.

  print("-------17 - User Login Email and Password.------");
  stdout.write("Enter Your Email: ");
  var email = stdin.readLineSync();
  stdout.write("Enter Your Password: ");
  var password = stdin.readLineSync();
  bool isloggedIn = false;
  while (!isloggedIn) {
    if (email == "zahidrafiq52@gmail.com" && password == "12345678") {
      print("login successful.");
      isloggedIn = true;
    } else {
      print("Incorrect email or password.");
    }
    break;
  }
//Q.18 - Write a program that asks the user for their email and password. You
// are given a list of predefined user credentials (email and password
// combinations). If the entered email and password match any of the
// credentials in the list, print "User login successful." Otherwise, keep
// asking for the email and password until the correct credentials are
// provided.

  print("------- -18 User Login Email and Password(User credentials)------");
  List<Map<String, String>> credentials = [
    {"email": "user1@example.com", "password": "password1"},
    {"email": "user2@example.com", "password": "password2"},
    {"email": "user3@example.com", "password": "password3"},
  ];

  stdout.write("Enter Your Email: ");
  var email2 = stdin.readLineSync();
  stdout.write("Enter Your Password: ");
  var password2 = stdin.readLineSync();

  bool isLoginSuccessful = false;

  for (var credential in credentials) {
    if (credential["email"] == email2 && credential["password"] == password2) {
      isLoginSuccessful = true;
      break; // Exit the loop once a match is found
    }
  }

  if (isLoginSuccessful) {
    stdout.write("Login successful.");
  } else {
    stdout.write("Incorrect email or password.");
  }
  print("");
//Q.19 -  Write a program that takes a list of numbers as input and prints the
// numbers greater than 5 using a for loop and if-else condition.

  print("------- -19 Number of List greater than 5)------");
  List<int> numbers = [2, 7, 4, 9, 1, 6, 3, 8];

  for (int number in numbers) {
    if (number > 5) {
      print(number);
    }
  }

//Q.20 Write a program that counts the number of vowels in a given string
// using a for loop and if-else condition.

  print("-------20 - Counts The Number Of Vowels)------");
  String input = "Hello, World!";
  int vowelCount = 0;

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i].toLowerCase();

    if (currentChar == 'a' ||
        currentChar == 'e' ||
        currentChar == 'i' ||
        currentChar == 'o' ||
        currentChar == 'u') {
      vowelCount++;
    }
  }

  print("Number of vowels: $vowelCount");
//Q.21 - Implement a code that finds the maximum and minimum elements in a
// list using a for loop and if-else condition.

  print("------- 21- The Maximum And Minimum Elements In A list--------");
  var listofnumber = [121, 12, 33, 14, 3];

  var largestValue = listofnumber[0];
  var smallestValue = listofnumber[0];

  for (var i = 0; i < listofnumber.length; i++) {
    if (listofnumber[i] > largestValue) {
      largestValue = listofnumber[i];
    }

    if (listofnumber[i] < smallestValue) {
      smallestValue = listofnumber[i];
    }
  }

  print("Smallest value in the list : $smallestValue");
  print("Largest value in the list : $largestValue");

//Q.22 - Write a program that calculates the sum of the squares of all odd
// numbers in a given list using a for loop and if-else condition.

  print("-------22- The Sum Of The Squares Of All Odd-------");

  List<int> numbersq = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sumOfSquares = 0;

  for (int number in numbersq) {
    if (number % 2 != 0) {
      // Check if number is odd
      sumOfSquares += (number * number);
    }
  }

  print("Sum of squares of odd numbers: $sumOfSquares");

// Q.23 - Write a program that takes a list of student details as input, where
// each student is represented by a map containing their name, marks,
// section, and roll number. The program should determine the grade of
// each student based on their average score (assuming maximum marks
// for each subject is 100) and print the student's name along with their
// grade.
// List<Map<String, dynamic>> studentDetails = [
// {'name': 'John', 'marks': [80, 75, 90], 'section': 'A', 'rollNumber': 101},
// {'name': 'Emma', 'marks': [95, 92, 88], 'section': 'B', 'rollNumber': 102},
// {'name': 'Ryan', 'marks': [70, 65, 75], 'section': 'A', 'rollNumber': 103},
// ];

  print("-------23- List Of Student Details-------");

  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 90, 85],
      'section': 'A',
      'rollNumber': 'A001',
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 'B002',
    },
    {
      'name': 'Alex',
      'marks': [70, 75, 80],
      'section': 'A',
      'rollNumber': 'A003',
    },
  ];

  for (Map<String, dynamic> student in studentDetails) {
    String name = student['name'];
    List<int> marks = student['marks'];

    int totalMarks = marks.reduce((a, b) => a + b);
    double average = totalMarks / marks.length;
    String grade;

    if (average >= 90) {
      grade = 'A';
    } else if (average >= 80) {
      grade = 'B';
    } else if (average >= 70) {
      grade = 'C';
    } else if (average >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print('Name: $name | Grade: $grade');
  }

//Q.24 - Implement a code that finds the average of all the negative numbers in
// a list using a for loop and if-else condition.
  print("-------24- Average Of All The Negative Numbers-------");

  List<int> negativenumbers = [5, -2, 8, -1, -9, 4];
  int sumOfNegatives = 0;
  int count = 0;

  for (int number in negativenumbers) {
    if (number < 0) {
      sumOfNegatives += number;
      count++;
    }
  }

  double average = count > 0 ? sumOfNegatives / count : 0;

  print("Average of negative numbers: $average");

//Q.25 - Write a program that takes a list of integers as input and returns a new
// list containing only the prime numbers from the original list. Implement
// the solution using a for loop and logical operations.
// Input: [4, 7, 10, 13, 16, 19, 22, 25, 28, 31]
// Output: [7, 13, 19, 31]
  print("-------25- List of Integers Containing only the Prime Number-------");
  var myList = [4, 7, 10, 13, 16, 19, 22, 25, 28, 31];

  getPrimeNo(myList);
}

getPrimeNo(List<int> numbers) {
  List<int> primeNumbers = [];
  for (int val in numbers) {
    if (isPrime(val)) {
      primeNumbers.add(val);
    }
  }
  print('The prime numbers in the List: $primeNumbers');
}

bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i < number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
