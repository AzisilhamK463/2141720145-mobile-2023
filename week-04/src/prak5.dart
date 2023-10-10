void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var num = (65, 34);

  var record2 = tukar(num);
  print(record2);

// Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ("Azis Ilham Kurniawan", 2141720145);
  print(mahasiswa);

  var mahasiswa2 = ('Azis Ilham Kurniawan', a: 2141720145, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
