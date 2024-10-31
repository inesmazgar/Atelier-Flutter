void main() {
  var name = 'Ines';
  var age = 22;
  var score = 14.2;
  bool fullstack;
  num anyType;

  /* anyType = score ; affectation correcte */
  /* anyType = age ; affectation correcte */
  /* anyType = age+score ; affectation correcte */
  /* score = age ; affectation incorrecte */
  /* age = score ; affectation incorrecte */

  anyType = score;
  anyType = age;
  anyType = age + score;

  print(anyType.runtimeType); // Affiche: double

  String greet;

  print('Hi ! I am $age years old');

  greet = 'Hi ! I am 23 years old ! ';
  print('$greet');

  /* ou bien print('Hi! I am ' + age.toString() + ' years old.'); */

  var greetMajuscule = greet.toUpperCase();
  print('$greetMajuscule');

  /* Affichez la sous-chaîne « 23 years old ! » */
  var chaine1 = greet.substring(11, greet.length);

  /* Affichez la sous-chaîne « 23 years old » */
  var chaine2 = greet.substring(1, chaine1.length - 1);

  /* Affichez la sous-chaîne « 23 » */
  var myAge = greet.substring(1, 2);

  int myAgeAsANumber = int.parse(myAge);

  int myAgeIn10Years = myAgeAsANumber + 10;

  print(' In 10 years, I will be $myAgeIn10Years years old ');

  /* les types dynamiques */

  var chaine3 = "Hello !";

/* erreur d'affectation  chaine3=4 ; car une variable de type chaine de caractères ne peut pas avoir un entier */

  // a. Création de la liste avec doublon
  List<String> programmingLanguagesList = [
    'Dart',
    'Java',
    'C++',
    'Python',
    'C++'
  ];

  print('Liste avec doublon : $programmingLanguagesList');

  // b. Ajout d'un doublon de C++
  programmingLanguagesList.add('C++');

  print(
      'Liste après ajout d\'un doublon : $programmingLanguagesList'); // Affiche : [Dart, Java, C++, Python, C++, C++]

  // a. Création d'un Set avec les langages
  Set<String> programmingLanguagesSet = {
    'Dart',
    'Java',
    'C++',
    'Python',
    'C++'
  };

  print(
      'Set avec doublon (automatiquement supprimé) : $programmingLanguagesSet'); // Affiche : {Dart, Java, C++, Python}

  // b. Ajout d'un doublon de C++
  programmingLanguagesSet.add('C++');

  print(
      'Set après ajout d\'un doublon : $programmingLanguagesSet'); // Affiche : {Dart, Java, C++, Python}

  /* on remarque ici qu'il faut qu'on utilise une List si on a besoin de conserver tous les éléments, même les doublons mais un un Set si on veut veux garantir l'unicité des éléments dans ta collection. */

  // Création du Map avec les attributs id, name, age et programmingLanguagesList
  Map<String, dynamic> person = {
    'id': 1,
    'name': 'Alice',
    'age': 30,
    'programmingLanguagesList': programmingLanguagesList,
  };

  /* les structures conditionnelles */

  if (fullstack = false) {
    print('I\'m not a developer');
  } else {
    print('I\'m a developer');
  }

  /* avec opérateur de nullité */

  if (fullstack = false) {
    print('I\'m not a fullstack developer');
  } else {
    print('I\'m a fullstack developer');
  }

  print(fullstack ??
      "I'm not a developer"); // Affiche "I'm not a developer" si fullStack est null

  if (age <= 18) {
    print('I\'m not an adult');
  } else {
    print('I\'m an adult');
  }

  /* ou méthode ternaire */

  String message = (age >= 18)
      ? "You're an adult."
      : (age >= 13)
          ? "You're a teen."
          : "You're still a child.";

  print(message);

  switch (score) {
    case int _ when score >= 18:
      print("Excellent.");
      break;
    case int _ when (score >= 15 && score < 18):
      print("Good.");
      break;
    case int _ when (score >= 13 && score < 15):
      print("Average.");
      break;
    case int _ when (score >= 10 && score < 13):
      print("Bad.");
      break;

    default:
      print("Undefined Grade.");
  }

  /* structure itératives */

  for (int i = 0; i < programmingLanguagesList.length; i++) {
    print(programmingLanguagesList[i]);
  }

  int j = 0;
  while (j < programmingLanguagesList.length) {
    print(programmingLanguagesList[j]);
    j++;
  }

  int f = 0;
  do {
    print(programmingLanguagesList[f]);
    f++;
  } while (f < programmingLanguagesList.length);

  programmingLanguagesSet.forEach((language) {
    print(language);
  });

  person.forEach((key, value) {
    print('$key: $value');
  });
}
