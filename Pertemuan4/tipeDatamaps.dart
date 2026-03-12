void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'name': 'Widii',
    'nim': '244107060029',
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon', 27: 'Widii', 28: '244107060029'};

  var mhs1 = Map<String, String>();
  mhs1 ['name'] = 'Widii';
  mhs1 ['nim'] = '244107060029';

  var mhs2 = Map<int, String>();
  mhs2[27] = 'Widii';
  mhs2[28] = '244107060029';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}

