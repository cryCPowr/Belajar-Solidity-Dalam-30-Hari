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

## Kontrak Versi 2
### Penjelasan Penulisan Kontrak Pintar
Kontrak Versi 2 adalah kontrak sederhana yang menunjukkan berbagai tipe data variabel state yang berbeda dan bagaimana cara mendeklarasikannya pada kontrak yang memiliki enam variabel state yang berbeda dengan tipe data yang berbeda, pada variable pertama adalah `stringNilai`, variable kedua adalah `booleanSaya`, variable ketiga adalah `intSaya`, variable keempat adalah `uintSaya`, variable kelima adalah `uint8Saya`,variable keenam adalah `uint256Saya` di dalam penulisan pada versi kedua ini Dalam kontrak ini, saya memfokuskan agar pengguna dapat membaca nilai dari setiap variabel state yang berbeda dari luar kontrak dengan menggunakan fungsi getter otomatis yang disediakan oleh Solidity. Namun,saya tidak menambahkan fungsi setter yang disediakan didalam kontrak ini, sehingga pengguna tidak dapat mengubah nilai variabel state dari luar kontrak.
##### variable `stringNilai` tertulis pada bagian ini:
```
string public stringNilai = "nilaiSaya";
```
Variabel state pertama adalah `stringNilai`, yang dideklarasikan sebagai variabel string publik. Ini berarti bahwa nilai dari variabel ini dapat dibaca dari luar kontrak dan dapat diakses melalui fungsi getter otomatis yang disediakan oleh Solidity.
##### variable `booleanSaya` tertulis pada bagian ini:
```
bool public booleanSaya = true;
```
Variabel state kedua adalah `booleanSaya`, yang dideklarasikan sebagai variabel boolean publik. Ini juga berarti bahwa nilai variabel dapat dibaca dari luar kontrak dan dapat diakses melalui fungsi getter otomatis.
##### variable `intSaya` tertulis pada bagian ini:
```
int public intSaya = -1;
```
Variabel state ketiga adalah `intSaya`, yang dideklarasikan sebagai variabel integer publik dengan tanda (-). Ini berarti variabel ini dapat mewakili bilangan bulat negatif atau nol. Variabel ini juga dapat dibaca dari luar kontrak.
##### variable `uintSaya` tertulis pada bagian ini:
```
uint public uintSaya = 1;
```
Variabel state keempat adalah `uintSaya`, yang dideklarasikan sebagai variabel unsigned integer publik. Ini berarti variabel ini hanya dapat mewakili bilangan bulat positif atau nol. Variabel ini juga dapat dibaca dari luar kontrak.
##### variable `uint8Saya` tertulis pada bagian ini:
```
uint8 public uint8Saya = 8;
```
Variabel state kelima adalah `uint8Saya`, yang dideklarasikan sebagai variabel unsigned integer publik dengan ukuran 8 bit. Ini berarti variabel ini hanya dapat mewakili bilangan bulat positif atau nol dari rentang 0 hingga 255. Variabel ini juga dapat dibaca dari luar kontrak.
##### variable `uint256Saya` tertulis pada bagian ini:
```
uint256 public uint256Saya = 9999;
```
Variabel state terakhir adalah `uint256Saya`, yang dideklarasikan sebagai variabel unsigned integer publik dengan ukuran 256 bit. Ini berarti variabel ini dapat mewakili bilangan bulat positif atau nol dengan rentang yang sangat besar. Variabel ini juga dapat dibaca dari luar kontrak.
### Penjelasan Logika dan Alur Kontrak Pintar V2
ketika pertma kali kontrak ini dibuat, setiap variabel state diinisialisasi dengan nilai defaultnya (0 untuk tipe integer dan boolean false untuk tipe boolean). Namun, nilai variabel `stringNilai` diinisialisasi dengan string `nilaiSaya` yang telah ditentukan.

## Kontrak Versi 3
### Penjelasan Penulisan Kontrak Pintar
Kontrak Versi 3 adalah kontrak sederhana yang menunjukkan bagaimana cara menggunakan tipe data `enum` dalam Solidity. `enum` adalah tipe data yang digunakan untuk mendefinisikan serangkaian konstanta bernama yang dapat diakses dengan mudah di dalam kontrak. pada kontrak ini saya mendefinisikan tiga konstanta bernama dalam `enum Perjalan`, yaitu `Menunggu`, `Siap`, dan `Berjalan`. Konstanta-konstanta ini merepresentasikan tiga status perjalanan yang mungkin terjadi. saya juga mendeklarasikan variabel state publik dengan nama `perjalanan`, yang memiliki tipe data `Perjalan` lalu saya juga menulis Pada konstruktor, variabel state `perjalanan` diinisialisasi dengan status `Menunggu` lalu Selanjutnya, kita mendefinisikan dua fungsi pada kontrak ini. Pertama, fungsi `silahkanBerjalan()`, yang akan mengubah status `perjalanan` menjadi `Berjalan`. Kedua, fungsi `sudahBerjalan()`, yang akan mengembalikan nilai boolean true jika status `perjalanan` saat ini adalah `Berjalan`, dan false jika tidak. sebagai penjelasan agar mudah di pahami mari lanjutkan kepada penulisannya
##### tipe data enum `enum Perjalan` tertulis pada bagian ini:
```
    enum Perjalan { Menunggu, Siap, Berjalan }
```
pada penulisan ini sebagai saya kasih tahu sebelum nya saya menambahkan tipe data di dalam `enum perjalan` yaitu `Menunggu`, `Siap`, dan `Berjalan` untuk mempresentasikan status dari `enum perjalan`
##### variabel state publik dengan nama `perjalanan` tertulis pada bagian ini:
```
Perjalan public perjalanan;
```
pada penulisan ini kita memberi tahukan bahwa variable publik `perjalanan` adalah tipe data dari `Perjalan` yang akan menyimpan semua status yang ada di dalam tipe data `Perjalan`
##### mendeklarasikan Kontruktor Variable State `perjalanan` tertulis pada bagian ini:
```
    constructor() {
        perjalanan = Perjalan.Menunggu;
    }
```
pada penulisan ini kita juga memberi tahu bahwa saat pertama kali kontrak ini di buat status dari variable `perjalanan` adalah `Menunggu`
##### fungsi `silahkanBerjalan()` tertulis pada bagian ini:
```
    function silahkanBerjalan() public {
        perjalanan = Perjalan.Berjalan;
    }
```
pada penulisan ini saya memberikan fungsi `silahkanBerjalan()` untuk mengubah status variable `perjalanan` yang sebelum nya `menunggu` menjadi `Berjalan`
##### fungsi `sudahBerjalan()` tertulis pada bagian ini:
```
    function sudahBerjalan() public view returns(bool) {
        return perjalanan == Perjalan.Berjalan;
    }
```
pada penulisan ini saya memberikan fungsi `sudahBerjalan()` akan memberitahukan bahwa jika variable `perjalanan` sudah `Berjalan` maka akan memberikan/mengembalikan nilai boolean `true` jika status `perjalanan` sudah `Berjalan` lalu jika tidak atau masih dalam status `Menunggu` maka akan `false`
### Penjelasan Logika dan Alur Kontrak Pintar V3
ketika kontrak ini dibuat, status `perjalanan` diinisialisasi dengan nilai `Menunggu`. Ketika pengguna memanggil fungsi `silahkanBerjalan()`, status perjalanan diubah menjadi `Berjalan`. Pengguna juga dapat memanggil fungsi `sudahBerjalan()` untuk memeriksa apakah status `perjalanan` saat ini adalah `Berjalan` atau `Menunggu`.

## Kontrak Versi 4
### Penjelasan Penulisan Kontrak Pintar
Kontrak Versi 4 ini adalah Kontrak yang menggunakan struktur data struct untuk membuat kelompok orang di dalam penulisan kontrak ini ada 3 bagian yaitu 
##### pertama Deklarasi variabel yang saya tulis sebagai `Orang[] public kelompok` dan `uint256 public jumlahKelompok`
##### kedua Deklarasi struct data yang saya tulis sebagai `struct Orang { string _namaDepan; string _namaBelakang; }`
##### ketiga Deklarasi Fungsi yang saya tulis sebagai `function tambahOrang(string memory _namaDepan, string memory _namaBelakang) public`

berikut adalah pemahaman lebih lanjut dari penulisannya

##### Deklarasi variabel tertulis pada bagian ini:
```
    Orang[] public kelompok;
    uint256 public jumlahKelompok;
```
di sini saya memberi tahu bahwa variable `kelompok` adalah array yang berisi struktur data yang di ambil dari `Orang[]` dan saya juga menuliskan `public` yang dimana ini dapat di akses oleh orang lain atau publik, lalu kenapa variable berisikan array struktur? karena pada `Orang[]` terdapat `[]` . lalu pada penulisan ke dua yang menjelaskan bahwa variable `jumlahKelompok` variable yang berisikan integer 256 bit yang di ambil dari data `uint256` yang mendeklarasikan  jumlah anggota dalam kelompok , serta menggunakan `public` agar dapat di akses oleh semua orang atau publik.
##### Deklarasi struct data tertulis pada bagian ini:
```
    struct Orang {
        string _namaDepan;
        string _namaBelakang;
    }
```
di sini saya menambahkan `struct Orang` yang memuat data dengan nama orang , lalu saya juga menambahkan string `_namaDepan` dan string`_namaBelakang` untuk mengisi data yang di kirimkan untuk `struct Orang`
##### fungsi `function tambahOrang` tertulis pada bagian ini:
```
    function tambahOrang(string memory _namaDepan, string memory _namaBelakang) public {
        kelompok.push(Orang(_namaDepan, _namaBelakang));
        jumlahKelompok += 1;
    }
```
pada bagian ini saya memberikan fungsi `tambahOrang` adalah fungsi yang menambahkan orang baru ke kelompok yang di dalam nya terdapat struktur dari `struct Orang` yang memiliki argumen `_namaDepan` dan `_namaBelakang` serta saya juga menambahkan string `memory` untuk menyimpan nya
### Penjelasan Logika dan Alur Kontrak Pintar V4
Logika dari kontrak ini sederhana: pengguna dapat menambahkan orang baru ke dalam kelompok dengan memanggil fungsi tambahOrang(), yang akan menambahkan struktur data Orang baru ke array kelompok dan meningkatkan jumlah anggota kelompok. Karena array kelompok dideklarasikan sebagai variabel publik, setiap orang dapat melihat daftar anggota kelompok. lalu Alur kerja pada kontrak ini adalah pengguna memanggil fungsi tambahOrang() dengan memberikan nama depan dan belakang orang yang ingin ditambahkan. Setelah fungsi dijalankan, struktur Orang baru ditambahkan ke array kelompok dan jumlah anggota kelompok ditingkatkan. Jumlah anggota kelompok dan daftar anggota kelompok dapat diakses oleh siapa saja yang memiliki akses ke kontrak ini.
## Kontrak Versi 5
### Penjelasan Penulisan Kontrak Pintar
Kontrak versi 5 ini adalah kontrak sederhana yang menggunakan fitur `mapping` pada Solidity, Mapping sendiri adalah salah satu tipe data di Solidity yang berguna untuk menghubungkan antara dua nilai, yaitu kunci dan nilai. Pada dasarnya, mapping memetakan suatu nilai kunci ke nilai yang berbeda. Mapping dapat digunakan untuk mempercepat akses data dan pengambilan keputusan pada suatu kontrak pintar.. Kontrak ini memiliki fungsi `tambahOrang` dan `hapusOrang` yang memungkinkan kita untuk menambahkan data orang baru dan menghapus data orang yang sudah ada dari `mapping`. di kontrak ini juga saya memakai `struct Orang` yang di dalamnya terdpat variable `_id`, `_namaDepan`, dan `_namaBelakang` lalu saya juga menambahkan variable public `jumlahKelompok` serta menambahkan fungsi `function tambahOrang` dan `function hapusOrang`, berikut adalah penulisan dari semua yang ada di kontrak versi 5
##### variable public `jumlahKelompok` tertulis pada bagian ini:
```
uint256 public jumlahKelompok = 0;
```
di dalam penulisan ini saya menggunakan `uint256` yang mendeklarasikan integral pada `jumlahKelompok` yang saya sudah saya atur `0` di saat kontrak ini di buat serta memberikan akses `public` agar dapat di akses oleh semua orang
##### Penerapan `mapping` tertulis pada bagian ini:
```
mapping(uint => Orang) public Kelompok;
```
pada penulisan ini kita menerapkan `mapping` dan kita juga mendeklrasikan `Kelompok` sebagai sebuah `mapping` yang memiliki nilai tipe data atau kunci `uint` dan sebagai kunci , lalu saya juga menambahkan nilai `Orang` yang berkaitan pada kunci `uint` karna itu adalah pengguanaan `mapping` serta menambahkan `public` agar semua orang dapat mengakses variable `Kelompok` 
##### Penerapan `struct Orang` tertulis pada bagian ini:
```
   struct Orang {
        uint _id;
        string _namaDepan;
        string _namaBelakang;
    }
```
di dalam penulisan ini saya menuliskan `struct Orang` yang berisi 3 variable yaitu `_id` yang di mana variable ini untuk mengidentifikasikan setiap Orang yang ada di dalam `mapping` `Kelompok` dan saya juga memakai tipe data `uint` karena hanya menampilkan integrial/bilangan bulat saja , `_namaDepan` ini untuk menyimpan sebuah nama depan maka dari itu saya menggunakan tipe data `string` agar dapat menerima angka dan huruf, dan `_namaBelakang` ini juga sama seperti sebelum nya di mana ini untuk menyimpan nama belakang dan juga menggunakan tipe data `string` agar dapat menerima angka dan huruf
##### fungsi `tambahOrang` tertulis pada bagian ini:
```
    function tambahOrang(string memory _namaDepan, string memory _namaBelakang) public {
        jumlahKelompok += 1;
        Kelompok[jumlahKelompok] = Orang(jumlahKelompok, _namaDepan, _namaBelakang);
    }
```
pada bagian fungsi `tambahOrang` saya memakai tipe data `string` untuk menerima dan mengembalikan angka atau huruf dan `memory` untuk menyimpan nya serta saya juga menerima dua parameter yaitu `namaDepan` untuk memastikan siapa nama depan nya dan variable `namaBelakang` untuk memastikan nama belakang nya serta memberikan `public` agar dapat di akses semua orang, lalu di saat sudah menambahkan/memastikan orang masuk kedalam `mapping` pada `Kelompok` yang akan meningkatkan nilai dari variable `jumlahKelompok` dengan nilai `Orang` yang terdiri dari `_namaDepan` dan `_namaBelakang`.
##### fungsi `hapusOrang` tertulis pada bagian ini:
```
    function hapusOrang(uint _id) public {
        delete Kelompok[_id];
        jumlahKelompok -= 1;
    }
```
pada fungsi `hapusOrang` di sini saya hanya menerima bilangan bulat karena saya meminta parameter `_id` yang bertipe data `uint` lalu saya juga menerapkan `public` agar semua orang dapat mengakses fungsi ini , lalu saya juga menambahkan kunci `delete` pada fungsi `hapusOrang` yang dimana akan menghapus `mapping` yang sudah di deklarasikan sebagai `Kelempok` yang memiliki kunci `_id`, lalu pada penulisan `jumlahKelompok -= 1;` itu menunjukan bahwa setiap kunci `delete` di panggil melalui fungsi `hapusOrang` akan berkurang 1

### Penjelasan Logika dan Alur Kontrak Pintar V5
Kontrak ini memiliki alur kerja yang sederhana. Saat fungsi tambahOrang dipanggil, data orang baru ditambahkan ke dalam mapping Kelompok, dan variabel jumlahKelompok ditingkatkan. Saat fungsi hapusOrang dipanggil, data orang dihapus dari mapping Kelompok, dan variabel jumlahKelompok dikurangi.
