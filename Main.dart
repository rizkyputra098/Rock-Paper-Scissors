import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  String? yourchoice;
  do {
    print('=====Rock-Paper-Scissors=====');
    print('');
    print('Start Game and Have Fun !');
    print('''(R) Rock 
(P) Paper 
(S) Scissors 
Other : Quit''');
    stdout.write("Your choice: ");
    yourchoice = stdin.readLineSync()!.toUpperCase();
    logikGame(yourchoice);
    print('=============================');
  } while (yourchoice == 'R' || yourchoice == 'S' || yourchoice == 'p');
  print("thanks for playing !!!!.");
}

void logikGame(yourchoice) {
  List<String> choice = ['R', 'P', 'S'];
  Random random = Random();
  String randomchoice = choice[random.nextInt(choice.length)];
  String inputan = yourchoice;
  print('==============================');
  if (yourchoice == 'R') {
    print('You : Rock');
  } else if (yourchoice == 'P') {
    print('You : Paper');
  } else if (yourchoice == 'S') {
    print('You : Scissors');
  } else {
    print('You : ');
  }
  if (randomchoice == 'R') {
    print('Computer : Rock');
  } else if (randomchoice == 'P') {
    print('Computer : Paper');
  } else {
    print('Computer : Scissors');
  }
  switch (inputan) {
    case 'R':
      if (randomchoice == 'R') {
        print('Result : Draw');
      } else if (randomchoice == 'P') {
        print('Result : Computer Win');
      } else {
        print('Result : You Win');
      }
      break;
    case 'P':
      if (randomchoice == 'P') {
        print('Result : Draw');
      } else if (randomchoice == 'S') {
        print('Result : Computer Win');
      } else {
        print('Result : You Win');
      }
      break;
    case 'S':
      if (randomchoice == 'S') {
        print('Result : Draw');
      } else if (randomchoice == 'R') {
        print('Result : Computer Win');
      } else {
        print('Result : You Win');
      }
      break;
  }
}
