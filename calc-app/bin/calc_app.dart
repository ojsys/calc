import 'dart:io';

String prompt(String promptText) {
  print(promptText);
  String answer = stdin.readLineSync().toString();
  return answer;
}

double promptDouble() {
  print("Enter a number: ");
  double myNum = double.parse(stdin.readLineSync().toString());
  return myNum;
}

void main() {
  //Getting inputs from user
  double num1 = promptDouble();
  double num2 = promptDouble();
  String op = prompt("Enter an operation (+, -, /, *): ");

  //Operations logic
  if (op == '+') {
    print(num1 + num2);
  } else if (op == '-' && num1 > num2) {
    print(num1 - num2);
  } else if (op == '-' && num2 > num1) {
    print(num2 - num1);
  } else if (op == '*') {
    print(num1 * num2);
  } else if (op == '/' && num1 > num2) {
    print(num1 / num2);
  } else if (op == '/' && num1 < num2) {
    print(num2 / num1);
  } else {
    print("Not a valid operation!");
  }
}
