void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';

gifts['nim'] ='2141720145';
gifts['nama'] = 'Azis Ilham Kurniawan';

nobleGases[1] = '2141720145';
nobleGases[3] = 'Azis Ilham Kurniawan';

mhs1['nim'] ='2141720145';
mhs1['nama'] = 'Azis Ilham Kurniawan';

mhs2[1] = '2141720145';
mhs2[3] = 'Azis Ilham Kurniawan';

print(gifts);
print(nobleGases);
print(mhs1);
print(mhs2);
}