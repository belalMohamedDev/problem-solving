import 'dart:io';

void main() {
  print("hello world");
  // print(exercise1());
  // print(exercise2());
//  exercise3();
 // exercise4();
  exercise5();
}

int exercise1() {
  //Create a program that asks the user to enter their name and their age.
  // Print out a message that tells how many years they have to be 100 years old.
  print("please enter name");
  String? name = stdin.readLineSync();
  print("${name} enter age ");
  String? age =stdin.readLineSync();
  int ageParse =int.parse(age!)  ;
  print("Thanks ${name}");
  return 100 - ageParse;
}

String exercise2() {
//Ask the user for a number.
// Depending on whether the number is even or odd,
// print out an appropriate message to the user.
  print("please enter number");
  String? number = stdin.readLineSync();
  int numberParse=int.parse(number!);
  if (numberParse % 2 == 0) {
    return "number is event";
  } else {
    return "number is odd";
  }
}

void exercise3() {
  //Take a list, say for example this one:
  //a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// and write a program that prints out all the elements of the list that are less than 5.
  var lists = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  lists.forEach((element) {
    if (element < 5) {
      print(element);
    }
  });
}

void exercise4() {
  //Create a program that asks the user for a
  //number and then prints out a list of all the divisors of that number.
  //  If you don’t know what a divisor is,
  // it is a number that divides evenly into another number.
  // For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
  print("please enter number");
  String? number = stdin.readLineSync() ;
  int numberParse=int.parse(number!);
  for (var i = 1; i < numberParse; i++) {
    if (numberParse % i == 0) {
      print(i);
    }
  }
}

void exercise5() {
  //Take two lists, for example:
  // a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  // b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
//and write a program that returns a list that contains
// only the elements that are common between them (without duplicates).
// Make sure your program works on two lists of different sizes.
  var list1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  var listReslt = [];
  for (var i in list1) {
    for (var j in list2) {
      if (i==j) {
        listReslt.add(i);
      }
    }
  }

  var ruslt = listReslt.toSet().toList();
  print(ruslt);
}
