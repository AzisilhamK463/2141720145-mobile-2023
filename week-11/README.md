# Nama : Azis Ilham Kurniawan

# NIM : 2141720145

# Kelas : TI - 3F

<br>

# Praktikum 1 : Dasar State dengan Model-View

### 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!

> Selesai ✅

### 2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

> Dengan mengimpor berkas data_layer.dart, berkas-berkas plan.dart dan task.dart akan menjadi terjangkau dan dapat digunakan dalam berkas lain tanpa perlu mengimpor keduanya secara terpisah. Ini membantu membuat kode menjadi lebih rapi dan ringkas karena Anda hanya perlu mengimpor satu berkas (data_layer.dart) untuk mendapatkan akses ke dua berkas tersebut, daripada mengimpor keduanya secara terpisah.

### 3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

> Variabel `plan` digunakan untuk menyimpan instance dari model `Plan`, memungkinkan akses ke data rencana. Mendeklarasikannya sebagai konstanta (`const`) menjaga konsistensi nilainya selama siklus hidup widget `PlanScreen`, menghindari perubahan yang tidak diinginkan pada objek `plan`.

### 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

> Hasil Capture berada dibawah

### 5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

> Langkah 11 (Method `initState()`) digunakan untuk menginisialisasi objek `scrollController` dan menghapus fokus dari elemen input saat pengguna menggulir halaman.

> Langkah 13 (Method `dispose()`) digunakan untuk membersihkan sumber daya, di mana Anda melepaskan objek `scrollController` agar tidak menyebabkan masalah memori atau sumber daya ketika widget tidak lagi digunakan.

- Hasil Akhir Praktikum 1

> ![Praktikum 1](./docs/praktikum1.gif)

- Penjelasan : Output diatas adalah hasil running dari praktikum 1 yaitu memahami Dasar State dengan Model-View untuk membuat list penjadwalan.

---

<br>
<br>

# Praktikum 2 : InheritedWidget

### 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!

> Selesai ✅

### 2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?

> Pada langkah 1, `InheritedWidget` digunakan untuk memungkinkan berbagi data dengan widget lain dalam subtree tanpa melewatkan data secara eksplisit. `InheritedNotifier` adalah salah satu jenis `InheritedWidget` yang juga memberikan notifikasi perubahan, sehingga widget lain dapat tahu ketika data berubah. Dalam kasus ini, `PlanProvider` menggunakan `InheritedNotifier` untuk berperan sebagai penyedia data `Plan` yang dapat diakses oleh widget lain dalam aplikasi.

### 3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?

> Method `completedCount` digunakan untuk menghitung jumlah tugas yang telah selesai dalam rencana, sedangkan method `completenessMessage` menghasilkan pesan yang menginformasikan sejauh mana rencana telah diselesaikan dengan menggabungkan jumlah tugas yang telah selesai dan total jumlah tugas dalam rencana. Ini membantu memberikan informasi visual tentang kemajuan rencana kepada pengguna.

### 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

- Hasil Akhir Praktikum 2

> ![Praktikum 2](./docs/praktikum2.gif)

- Penjelasan : Otuput dari Praktikum 2 ini sebenarnya sama seperti Praktikum 1 yaitu untuk membuat list penjadwalan, akan tetapi berbeda dalam metode pendekatan yang digunakan.
---

<br>
<br>

# Praktikum 3 : State di Multiple Screens

### 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md!

> Selesai 

### 2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!

![soal](https://jti-polinema.github.io/flutter-codelab/11-basic-state/img//9ce81bcd2817adc8.png)
> Alur navigasi tersebut dimulai dengan `MaterialApp` sebagai root aplikasi. Kemudian, `PlanProvider` digunakan untuk berbagi data rencana ke seluruh aplikasi. Dari sana, navigasi dilakukan dari `PlanCreatorScreen` (untuk membuat atau mengedit rencana) ke `PlanScreen` (untuk melihat daftar rencana). `Column` dan `Expanded` digunakan untuk mengatur elemen dalam tampilan. `Scaffold` memberikan kerangka tampilan aplikasi, dan `SafeArea` memastikan tampilan aman pada berbagai perangkat.

### 3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

- Hasil Akhir Praktikum 3

> ![Praktikum 3](./docs/praktikum3.gif)

- Penjelasan : Output dari Praktikum 3 tersebut adalah membuat penjadwalan yang didalamnya bisa menambahkan sub bagan.
---