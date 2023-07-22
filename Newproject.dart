import 'dart:io';

List<Map<String, dynamic>> studentRecords = [];

void main() {
  print("");
  print(" ---------- Welcome To Student Management System---------- ");
  print("");
  bool abc = true;
  while (abc) {
    print("Press 1 key to add Student Detail");
    print("Press 2 key to view Student Detail");
    print("Press 3 key to update Student Detail");
    print("Press 4 key to Delete Student Detail");
    print("Press any other key to exit");

    int a = int.parse(stdin.readLineSync()!);
    if (a == 1) {
      studentdetial();
    } else if (a == 2) {
      viewstudentdetail();
    } else if (a == 3) {
      print("Enter the index of the student you want to update:");
      int index = int.parse(stdin.readLineSync()!);
      updatestudentdetail(index);
    } else if (a == 4) {
      print("Enter the index of the student to delete:");
      int index = int.parse(stdin.readLineSync()!);
      deletestudentdetail(index);
    } else {
      print("Exiting the program.");
    }
  }
}

studentdetial() {
  Map<String, dynamic> userInputMap = {};

  print("Enter Student name:");
  String name = stdin.readLineSync()!;
  userInputMap['Name'] = name;

  print("Enter Student Roll No:");
  int rollNo = int.parse(stdin.readLineSync()!);
  if (rollNo < 0 || rollNo > 1001) {
    print(
        "Invalid Roll Number. Please enter a Roll Number between 1 and 1000.");
    return;
  }
  userInputMap['RollNo'] = rollNo;

  print("Enter Student Math No:");
  int math = int.parse(stdin.readLineSync()!);
  if (math < 0 || math > 101) {
    print("Invalid Math Number. Please enter a Math Number between 1 and 100.");
    return;
  }
  userInputMap['Math'] = math;

  print("Enter Student English No:");
  int english = int.parse(stdin.readLineSync()!);
  if (english < 0 || english > 100) {
    print(
        "Invalid Enlish Number. Please enter a English Number between 1 and 100.");
    return;
  }
  userInputMap['English'] = english;

  print("Enter Student Urdu No:");
  int urdu = int.parse(stdin.readLineSync()!);
  if (urdu < 0 || urdu > 101) {
    print("Invalid Urdu Number. Please enter a Urdu Number between 1 and 100.");
    return;
  }
  userInputMap['Urdu'] = urdu;
  print("Enter Student chemistry No:");
  int chemistry = int.parse(stdin.readLineSync()!);
  if (chemistry < 0 || chemistry > 101) {
    print(
        "IInvalid Chemistry Number. Please enter a Chemistry Number between 1 and 100.");
    return;
  }
  userInputMap['Chemistry'] = chemistry;
  print("Enter Student biology No:");
  int biology = int.parse(stdin.readLineSync()!);
  if (biology < 0 || biology > 101) {
    print(
        "Invalid Biology Number. Please enter a Biology Number between 1 and 100.");
    return;
  }
  userInputMap['Biology'] = biology;

  addstudentdetail(
    rollNo: rollNo,
    name: name,
    math: math,
    english: english,
    urdu: urdu,
    chemistry: chemistry,
    biology: biology,
  );
  markSheet(
    rollNo: rollNo,
    name: name,
    math: math,
    english: english,
    urdu: urdu,
    chemistry: chemistry,
    biology: biology,
  );
  print("Student added successfully!");
}

addstudentdetail(
    {required int rollNo,
    required String name,
    required int math,
    required int english,
    required int urdu,
    required int chemistry,
    required int biology}) {
  var student = {
    'RollNo': rollNo,
    'Name': name,
    'Math': math,
    'English': english,
    'Urdu': urdu,
    'Chemistry': chemistry,
    'Biology': biology,
  };
  studentRecords.add(student);
}

viewstudentdetail() {
  if (studentRecords.isEmpty) {
    print("No student records found.");
    return;
  }
  for (int i = 0; i < studentRecords.length; i++) {
    print("Student ${i + 1}:");
    print("Name: ${studentRecords[i]['Name']}");
    print("Roll No: ${studentRecords[i]['RollNo']}");
    print("Math: ${studentRecords[i]['Math']}");
    print("English: ${studentRecords[i]['English']}");
    print("Urdu: ${studentRecords[i]['Urdu']}");
    print("Chemistry: ${studentRecords[i]['Chemistry']}");
    print("Biology: ${studentRecords[i]['Biology']}");

    print("---------------------------");
  }
}

updatestudentdetail(int index,
    {int? rollNo,
    String? name,
    int? math,
    int? english,
    int? urdu,
    int? chemistry,
    int? biology}) {
  if (index >= 0 && index < studentRecords.length) {
    print("Name: ${studentRecords[index]['Name']}");
    print("Roll No: ${studentRecords[index]['RollNo']}");
    print("Math: ${studentRecords[index]['Math']}");
    print("English: ${studentRecords[index]['English']}");
    print("Urdu: ${studentRecords[index]['Urdu']}");
    print("Chemistry: ${studentRecords[index]['Chemistry']}");
    print("Biology: ${studentRecords[index]['Biology']}");
    print("---------------------------");

    print("Enter Student name:");
    String name = stdin.readLineSync()!;
    studentRecords[index]['Name'] = name;

    print("Enter Student Roll:");
    int? rollNo = int.parse(stdin.readLineSync()!);
    if (rollNo <= 0 || rollNo >= 1000) {
      print(
          "Invalid Roll Number. Please enter a Roll Number between 1 and 1000.");
      return;
    }
    studentRecords[index]['RollNo'] = rollNo;

    print("Enter Student Math No:");
    int? math = int.parse(stdin.readLineSync()!);
    if (math <= 0 || math >= 100) {
      print(
          "Invalid Math Number. Please enter a Math Number between 1 and 100.");
      return;
    }
    studentRecords[index]['Math'] = math;

    print("Enter Student English No:");
    int english = int.parse(stdin.readLineSync()!);
    if (english <= 0 || english >= 100) {
      print(
          "Invalid Enlish Number. Please enter a English Number between 1 and 100.");
      return;
    }
    studentRecords[index]['English'] = english;

    print("Enter Student Urdu No:");
    int urdu = int.parse(stdin.readLineSync()!);
    if (urdu <= 0 || urdu >= 100) {
      print(
          "Invalid Urdu Number. Please enter a Urdu Number between 1 and 100.");
      return;
    }
    studentRecords[index]['Urdu'] = urdu;

    print("Enter Student chemistry No:");
    int chemistry = int.parse(stdin.readLineSync()!);
    if (chemistry <= 0 || chemistry >= 100) {
      print(
          "IInvalid Chemistry Number. Please enter a Chemistry Number between 1 and 100.");
      return;
    }
    studentRecords[index]['Chemistry'] = chemistry;

    print("Enter Student biology No:");
    int biology = int.parse(stdin.readLineSync()!);
    if (biology <= 0 || biology >= 100) {
      print(
          "Invalid Biology Number. Please enter a Biology Number between 1 and 100.");
      return;
    }
    studentRecords[index]['Biology'] = biology;

    print("Updated Student Information:");
    print("Name: ${studentRecords[index]['Name']}");
    print("Roll No: ${studentRecords[index]['RollNo']}");
    print("Math: ${studentRecords[index]['Math']}");
    print("English: ${studentRecords[index]['English']}");
    print("Urdu: ${studentRecords[index]['Urdu']}");
    print("Chemistry: ${studentRecords[index]['Chemistry']}");
    print("Biology: ${studentRecords[index]['Biology']}");
    markSheet(
      rollNo: rollNo,
      name: name,
      math: math,
      english: english,
      urdu: urdu,
      chemistry: chemistry,
      biology: biology,
    );

    print("Student information updated successfully!");
  } else {
    print("Invalid index. No student found.");
  }
}

deletestudentdetail(int index) {
  if (index >= 0 && index < studentRecords.length) {
    studentRecords.removeAt(index);
    print("Student deleted successfully!");
  } else {
    print("Invalid index. No student found.");
  }
}

markSheet(
    {required int rollNo,
    required String name,
    required int math,
    required int english,
    required int urdu,
    required int chemistry,
    required int biology}) {
  num obtaindmark = math + english + urdu + chemistry + biology;
  int total = 500;
  num percentage = obtaindmark * 100 / total;
  print("Percentage $percentage");
  if (percentage >= 81 && percentage <= 100) {
    print("Grade : A1");
  } else if (percentage >= 71 && percentage <= 80) {
    print("Grade : A");
  } else if (percentage >= 61 && percentage <= 79) {
    print("Grade : B");
  } else if (percentage >= 51 && percentage <= 60) {
    print("Grade : C");
  } else if (percentage >= 33 && percentage <= 50) {
    print("Grade : E");
  } else {
    print("Grade : Fail");
  }

  return (percentage);
}
