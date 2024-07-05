part of 'lessons.dart';

void Lesson13() {
  var restaraunts = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var restaraunt in restaraunts) {
    var ratings = restaraunt['ratings'] as List<double>;
    var sum = 0.0;
    for (var rating in ratings) {
      sum += rating;
    }
    var avgRestarauntRating = sum / ratings.length;
    var avgRatingResult = avgRestarauntRating.toStringAsFixed(2);
    restaraunt['avgRating'] = avgRatingResult;
  }
  print(restaraunts);


  final colors = ['grey', 'brown'];
  const addBlue = false;
  const addRed = true;
  const extraColors = ['yellow', 'green'];
  if (addBlue) {
    colors.add('blue');
  }
  if (addRed) {
    colors.add('red');
  }
  colors.addAll(extraColors);
  print(colors);

  final colors2 = [
    'grey',
    'brown',
    if (addBlue)
      'blue',
    if (addRed)
      'red',
    for (var color in extraColors)
      color,
  ];
  print(colors2);

  const addExtraColors = true;
  final colors3 = [
    'grey',
    'brown',
    if (addBlue)
      'blue',
    if (addRed)
      'red',
    if (addExtraColors)
      ...['aqua', 'black'],
  ];
  print(colors3);

  const ratings = [4.0, 4.5, 3.5, 4.8];
  final restaurant = {
    'name': 'Pizza Mario',
    'cuisine': 'Italian',
    if (ratings.length > 3) ... {
      'ratings': ratings,
      'isPopular': true,
    }
  };
  print(restaurant);
}
