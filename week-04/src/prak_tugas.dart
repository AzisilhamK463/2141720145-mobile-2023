// void main() {
//   printMahasiswa(nama: 'Azis Ilham Kurniawan', nim: 2141720145);
// }

// void printMahasiswa({String? nama, int? nim}) {
//   print('Nama : $nama \n NIM : $nim');
// }

// void main() {
//   cetakMahasiswa("Azis Ilham Kurniawan", 2141720145);
// }

// void cetakMahasiswa(String nama, int nim) {
//   print('Nama: $nama \n NIM: $nim');
// }

// void main(){
//   printMahasiswa('Azis Ilham Kurniawan');
// }

// void printMahasiswa(String nama, {int nim = 2141720145}){
//   print('Nama: $nama \n NIM: $nim');
// }

// void main() {
//   tampilDataDiri('Azis Ilham Kurniawan', hitungUmur(2003));
// }

// int hitungUmur(int tahunLahir) {
//     return 2023 - tahunLahir;
// }

// void tampilDataDiri(String nama, int umur) {
//   print('$nama berumur $umur tahun');
// }

// void main() {
//   var sqrt = (int x) {
//     return x * x;
//   };

//   print(sqrt(9));
// }

// void main() {
//   var showNama = (){
//     var nama = "Azis Ilham Kurniawan";
//     print(nama);
//     void showNIM() {
//       var nim = "2141720145";
//       print(nim);
//     }
//     showNIM();
//   };

//   showNama();
// }

void main() {
  var text = "Azis Ilham Kurniawan";
  var (textList, textLength, wordCount) = getTextInfo(text);

  print(
      'Text List: $textList\nText Length: $textLength\nWord Count: $wordCount');
}

(List<String>, int, int) getTextInfo(String text) {
  var textResult = text.split(' ');
  var textLength = text.length;
  var wordCount = textResult.length;
  return (textResult, textLength, wordCount);
}
