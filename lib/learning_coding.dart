void getSum(List<int> number, Function result) {
  var sum = 0;

  for (var i = 0; i <= number.length; i++) {
    sum += i;
  }
  result(sum);
}

main() {
  //There are two types of variable creation in dart step 1. specifiy the type of variable 2. Type will be asign at dynamically

  Function resut = (var sum) => print(sum);

  var numbers = [
    1,
    2,
    3,
  ];
  getSum(numbers, resut);

  int age = 20;
  print(age);

  var age1 = 30;
  print(age1);

  List names = [
    'murugan',
    'subbarayan',
    'ansh',
    'priya',
  ];

  var name = [
    'murugan',
    'subbarayan',
    'ansh',
    'priya',
    'priya',
  ];

  print(names);
  print(name);

  Set nameSet = {
    'murugan',
    'subbarayan',
    'ansh',
    'priya',
    'priya',
  };
  print(nameSet);

  var nameSetDynamic = {
    'murugan',
    'subbarayan',
    'subbarayan',
    'ansh',
    'priya',
    'priya',
  };
  print(nameSetDynamic);

  Map familyName = {
    '1': 'Murugan',
    '2': 'priya',
    '3': 'Ansh',
    '4': 'gomathi',
    '5': 'praba',
  };
  print(familyName);

  var familyName1 = {
    '1': 'Murugan',
    '2': 'priya',
    '3': 'Ansh',
    '4': 'gomathi',
    '5': 'praba',
  };
  print(familyName1);
}
