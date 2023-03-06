# Belajar-Solidity-Hari-1
## Pengenalan Solidity dan Blockchain
Solidity adalah bahasa pemrograman yang digunakan untuk mengembangkan aplikasi pada platform Ethereum. Solidity dirancang untuk membuat smart contract, yang merupakan program komputer yang dapat dieksekusi secara otomatis dan berjalan di dalam jaringan Ethereum.

Smart contract yang ditulis menggunakan Solidity dapat digunakan untuk membuat berbagai macam aplikasi, termasuk aplikasi keuangan, game, dan sistem voting yang terdesentralisasi. Solidity memiliki sintaks yang mirip dengan JavaScript dan dirancang untuk memudahkan pengembangan smart contract.

Sedangkan Blockchain adalah teknologi yang digunakan untuk membuat database terdistribusi dan terdesentralisasi. Blockchain memungkinkan informasi untuk disimpan secara aman dan transparan tanpa adanya otoritas sentral. Dalam jaringan blockchain, setiap transaksi disimpan di dalam blok, dan setiap blok dihubungkan satu sama lain untuk membentuk rantai blok (blockchain).

Blockchain pertama kali diperkenalkan sebagai teknologi yang digunakan untuk mendukung transaksi bitcoin. Namun, teknologi blockchain sekarang digunakan dalam berbagai macam aplikasi, termasuk perbankan, asuransi, dan logistik. Blockchain sangat aman karena informasi yang disimpan di dalamnya tidak dapat diubah atau dihapus secara sepihak, dan transaksi dalam jaringan blockchain dapat dilakukan tanpa memerlukan pihak ketiga.

oke baiklah kita bisa melihat kontrak pintar sederhana yang saya buat di folder `contracts` pada bagian `day 1` ini.
baiklah kita langsung membahas saja dari KontrakV1 sampai KontrakV5 :

## Kontrak Versi 1
### Penjelasan Penulisan Kontrak Pintar
kontrak versi 1 ini membahas bagaimana membuat fungsi pada kontrak pintar ini. di dalam penulisan sederhana, saya hanya menambahkan 2 fungsi saja yaitu fungsi `ambilNilai` dan fungsi `aturNilai` lalu saya juga menambahkan satu variable yang saya tulis sebagai `nilai` dan saya juga menstel kan nilai nya yang saya tulis sebagai `nilaiSaya`, berikut adalah penulisannya:
##### variable `nilai` tertulis pada bagian ini:
```
string nilai;
```
##### saya menstel kan nilai yang saya tulis sebagai `nilaiSaya` tertulis pada bagian ini:
```
nilai = "nilaiSaya";
```
##### fungsi `ambilNilai` tertulis pada bagian ini:
```
    function ambilNilai() public view returns (string memory) {
        return nilai;
    }
```
Fungsi `ambilNilai` adalah fungsi publik yang mengembalikan nilai saat ini dari variabel `nilai` sebagai `string`. Fungsi ini hanya dapat dibaca `view`, karena tidak mengubah nilai variabel `nilai` dalam kontrak.
##### fungsi `aturNilai` tertulis pada bagian ini:
```
    function aturNilai(string memory _nilai) public {
        nilai = _nilai;
    }
```
Fungsi `aturNilai` adalah fungsi publik yang memungkinkan pengguna mengubah nilai variabel `nilai` dalam kontrak dengan memasukkan parameter `string` baru. Fungsi ini membutuhkan transaksi pada blockchain untuk dijalankan dan akan mengubah nilai variabel `nilai` di kontrak.
### Penjelasan Logika dan Alur Kontrak Pintar V1
pertama kali ketika kontrak ini dibuat, variabel `nilai` diinisialisasi dengan nilai awal `nilaiSaya`. Kemudian pengguna dapat memanggil fungsi `ambilNilai` untuk membaca nilai saat ini dari variabel `nilai` lalu Jika pengguna ingin mengubah nilai variabel `nilai`, mereka dapat memanggil fungsi `aturNilai` dengan parameter string baru. Ini akan memicu transaksi pada blockchain yang akan mengubah nilai variabel `nilai` dalam kontrak.
