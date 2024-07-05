part of 'lessons.dart';

void Lesson7() {
  const age = 40;
  if (age < 16) {
    print('Junior ticker');
    print('Price is \$8');
  } else if (age >= 60) {
    print('Senior ticket');
    print('Price is \$6');
  } else {
    print('Regular ticket');
    print('Price is \$10');
  }
  print('Enjoy your visit');

  const netSalary = 400;
  const expenses = 1000;

  if (netSalary > expenses) {
    print('You have saved ${netSalary - expenses}\$ this month');
  } else if (expenses > netSalary) {
    print('You have lost ${expenses - netSalary}\$ this month');
  } else {
    print("Your balance has't changed");
  }

  // var i = 1;
  // while(i <= 5) {
  //   print('i' * i);
  //   i++;
  // }

  for(var i = 1; i <= 5; i++) {
    print('i' * i);
  }

  print('Done');
}