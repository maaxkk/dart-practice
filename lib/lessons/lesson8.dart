part of 'lessons.dart';

enum Medal {
  gold, silver, bronze, noMedal
}

void Lesson8() {
  for(var i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('fizz buzz');
      break;
    } else if (i % 3 == 0) {
      print('fizz');
      continue;
    } else if (i % 5 == 0 ) {
      print('buzz');
      continue;
    } else {
      print(i);
    }
  }
  print('Done');

  const medal = Medal.noMedal;

  // const pos = 1;
  switch(medal) {
    case Medal.gold:
      print('gold 😎');
      break;
    case Medal.silver:
      print('silver 😃');
      break;
    case Medal.bronze:
      print('gold 🙂');
      break;
    case Medal.noMedal:
      print('no medal, try again 😔');
      break;
  }

  print(medal);
  print(medal.name);
  print(Medal.values);
}