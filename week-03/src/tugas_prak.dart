void main() {
  for (int index = 0; index <= 201; index++) {
    int b = 0;
    for (int j = 1; j <= index; j++) {
      if (index % j == 0) {
        b = b + 1;
      }
    }
    if (b == 2) {
      print("Bilangan Prima: $index");

      print("NAMA: Azis Ilham Kurniawan");
      print("NIM: 2141720145");
      print("\n");
    }
  }
}
