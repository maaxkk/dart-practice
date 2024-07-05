part of 'lessons.dart';

void Lesson14() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  var shoppingList = {
    if (bananas > 0)
      'bananas': bananas,
    if (apples > 0)
      'apples': apples,
    if (addGrains)
      ...grains
  };
  print(shoppingList);

  final list = [1,2,3];
  final copy1 = list;
  copy1[0] = 0;
  final copy2 = [...list];
  copy2[2] = 100;
  final copy3 = [
    for (var num in copy2)
      num
  ];
  copy3[2] = 500;
  print('list $list');
  print('copy $copy1');
  print('copy2 $copy2');
  print('copy3 $copy3');
}
