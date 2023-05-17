import 'dart:io';
import 'dart:math';

void main() {
  // int computerInput = Random().nextInt(3);
  // stdout.write("user input : ");
  // int userInput = int.tryParse(stdin.readLineSync().toString())!;
  int user = 0;
  int computer = 0;
  int select = 0;

  List games = ["Rocks", "Scissors", "Paper"];
  // print("user choice : ${games[userInput]}");
  // print("computer choice : ${games[computerInput]}");

  while (true) {
    int computerInput = Random().nextInt(3);
    stdout.write("user input : ");
    int userInput = int.tryParse(stdin.readLineSync().toString())!;

    print("user choice : ${games[userInput]}");
    print("computer choice : ${games[computerInput]}");
    if (userInput >= 3) {
      print("Please enter a number less than 3");
      continue;
    }
    if ((games[userInput] == "Rocks") && (computerInput == 1)) {
      print("User :${++user}" + "\t" + "Computer :${computer} ");
      select++;
    } else if ((games[userInput] == "Paper") &&
        (games[computerInput] == "Rocks")) {
      print("User :${++user}" + "\t" + "Computer :${computer} ");
      select++;
    } else if ((games[userInput] == "Scissors") &&
        (games[computerInput] == "Paper")) {
      print("User :${++user}" + "\t" "Computer :${computer} ");
      select++;
    } else if ((games[computerInput] == "Rocks") &&
        (games[userInput] == "Scissors")) {
      print("User :${user}" + "\t" "Computer :${++computer} ");
      select++;
    } else if ((games[computerInput] == "Paper") &&
        (games[userInput] == "Rocks")) {
      print("User :${user}" + "\t" "Computer ${++computer} ");
      select++;
    } else if ((games[computerInput] == "Scissors") &&
        (games[userInput] == "Paper")) {
      print("User :${user}" + "\t" + "Computer :${++computer} ");
      select++;
    } else {
      print("User ${++user}" + "\t" + "Computer :${++computer} ");
      select++;
    }
    if (select == 3) {
      print("\nGame over : User :${user}\tComputer :${computer}");

      break;
    }
  }
}
