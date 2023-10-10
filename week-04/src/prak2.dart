// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }
void main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  
  names1.add("Azis Ilham Kurniawan");
  names1.add("2141720145");

  names2.addAll({"Azis Ilham Kurniawan", "2141720145"});

  print(names1);
  print(names2);
}
