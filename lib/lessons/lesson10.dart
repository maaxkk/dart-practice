part of 'lessons.dart';

enum Choices {
  rock,
  scissors,
  paper,
}

void Lesson10() {
  String? input;
  while (input != 'q') {
    stdout.write('Rock, paper or scissors? (r/p/s) or q to quit: ');
    input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      Choices? playerChoice;
      if (input == 'r') {
        playerChoice = Choices.rock;
      } else if (input == 'p') {
        playerChoice = Choices.paper;
      } else {
        playerChoice = Choices.scissors;
      }
      final pcChoice = generateRandomChoice();
      print('User played $playerChoice');
      print('Pc played $pcChoice');
      if (pcChoice == playerChoice) {
        print("Draw!");
      } else
      if (playerChoice == Choices.rock && pcChoice == Choices.scissors
          || playerChoice == Choices.scissors && pcChoice == Choices.paper
          || playerChoice == Choices.paper && pcChoice == Choices.rock) {
        print('User won!');
      } else {
        print('Pc won!');
      }
    } else if (input != 'q') {
      print('Invalid input');
    }
  }
}

Choices generateRandomChoice() {
  var rng = Random();
  final randomInt = rng.nextInt(Choices.values.length);
  return Choices.values[randomInt];
}
