# Sesi Pembelajaran

di dalam sesi ini saya akan membahas tentang kontrak pintar sederhana saya yang saya beri nama [ContohKontrakan.sol](https://github.com/cryCPowr/Belajar-Solidity-Dalam-30-Hari/blob/main/day_1/contracts/ContohKontrakan.sol), yang dimana saya mencoba menggabungkan versi pertama sampai versi ke lima dan sedikit menambahkan beberapa fungsi lainnya yaitu menambahkan variable `address` , `require`, `msg.sender` dan `storage`, langsung saja kita membahas ada apa saja dan kegunaanya nya yang ada di dalam kontrak pintar ContohKontrakan.sol :

### Deklarasi Kontrak yang tertulis seperti ini 
```
contract SimulasiKontrakan
```
`SimulasiKontrakan` adalah sebuah deklarasi kontrak, yang setiap kontrak pintar pasti memilikinya
### variable `address` yang tertulis seperti ini 
```
address public juragan;
```
pada penulisan ini kita memberitahu bahwa variable `address` memiliki nilai yang saya sebut `juragan` saya menambahkan ini agar penggunaan kontrak pintar ini hanya bisa di jalankan/mengatur fungsi oleh pemilik kontrak ini yang di sebut `juragan` 
### variable `enum` yang tertulis seperti ini 
```
enum StatusKontrakan { Kosong, Terisi }
```
di sini variable `enum` memiliki 2 parameter yaitu `Kosong` dan `Terisi` untuk nanti mengatur apakah sebuah kontrakan masih `Kosong` atau sudah `Terisi`

### variable `sisaKontrakan` yang tertulis seperti ini 
```
uint256 public sisaKontrakan = 10;
```
pada penulisan ini saya membuat variable `sisaKontrakan` dengan tipe data `uint256` dan juga mengatur nilai dari variable `sisaKontrakan` dengan nilai `10` yang sudah di tetapkan.
### variable `bisnis` yang tertulis seperti ini 
```
string bisnis;
```
di penulisan ini saya membuat variable `bisnis` dengan tipe data `string`
### penggunaan `mapping` yang tertulis seperti ini 
```
mapping (uint => Bisnis) public daftarKontrakan;
```
penggunaan `mapping` ini untuk pemetaan variable `daftarKontrakan` yang di dalam nya terdapat struktur `Bisnis` dengan tipe data `uint` yang terdiri dari `struct Bisnis` nanti selanjutnya saya akan membahas pada bagian `struct Bisnis`
### pembuatan `constructor` yang tertulis seperti ini 
```
    constructor() {
        bisnis = "Bisnis Kontrakan";
        juragan = msg.sender;
    }
```
di dalam `constructor` saya membuat 2 variable yaitu `bisnis` yang di isi dengan `Bisnis Kontrakan` dan `juragan` yang di isi `msg.sender` , `msg.sender` itu sendriri  adalah alamat pengirim saat transaksi kontrak dibuat.
### pembuatan `modifier hanyaJuragan()` yang tertulis seperti ini 
```  
modifier hanyaJuragan() {
        require(msg.sender == juragan, "Hanya juragan yang berwenang disini");
        _;
    }
```
pada penulisan `modifier hanyaJuragan()` saya menambahkan untuk membatasi akses dari orang lain yang bersifat pengiriman ini bisa di sebut sebagai pemilik bisnis kontrakan
### penggunaan `struct Bisnis` yang tertulis seperti ini 
```
    struct Bisnis {
        uint _unitKontrakan;
        string _namaPemilik;
        StatusKontrakan _status;
    }
```
seperti yang saya bilang sebelumnya penggunaan `struct Bisnis` adalah merupakan isi dalam structur `Bisnis` yang di deklarasikan di penggunaan `mapping`, di `struct Bisnis` ini saya menuliskan tiga variable yaitu `_unitKontrakan` yang bertipe data `uint` variable ini untuk jumlah unit kontrakan yang di tempati, variable `_namaPemilik` yang bertipe data `string` untuk nama pemilik kontrakan, dan yang terakhir adalah variable `_status` yang bertipe data `StatusKontrakan` yang di ambil dari `enum` untuk mengetahui status kontrakan seperti yang `enum` deklrasikan .
### penggunaan `function bisnisApa()` yang tertulis seperti ini 
```
    function bisnisApa() public view returns (string memory) {
        return bisnis;
    }
```
pada fungsi ini saya membuat akses nya menjadi publik/ semua orang dapat mengakses nya dengan menambahkan `public` dengan menetapkan `string memory` untuk menyimpannya lalu mengembalikan nya dengan `retrun` yang mengambil nilai variable `bisnis`, karena ini hanya fungsi yang mengembalikan sebuah nilai yang sudah di tetapkan maka tidak apa apa jika akses ini di buat untuk semua orang.
### penggunaan `function tambahPemilik` yang tertulis seperti ini 
```
    function tambahPemilik(string memory _namaPemilik, uint _unitKontrakan) public hanyaJuragan {
        require(_unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditempati melebihi jumlah sisa kontrakan yang tersedia.");
        sisaKontrakan -= _unitKontrakan;
        daftarKontrakan[sisaKontrakan] = Bisnis(_unitKontrakan, _namaPemilik, StatusKontrakan.Terisi);
    }
```
pada fungsi `tambahPemilik` ini bertujuan untuk menambahkan pemilik Kontrak, lalu saya juga menambahkan parameter `_namaPemilik` yang bertipe data `string` karena ini menerima nilai apapun selain bilangan bulat / angka, lalu parameter `_unitKontrakan` yang bertipe data `uint` karena ini hanya menerima bilang bulat, saya juga memberi tahukan bahwa pada fungsi ini hanya dapat di jalankan oleh `juragan` yang saya tulis `public hanyaJuragan`, lalu menambahkan penulisan `require` yang di mana penjelasan dari penulisan tersebut adalah bahwa `_unitKontrakan` tidak boleh melebihi dengan menambahkan `<=` dari `sisaKontrakan` dalam fungsi ini saya juga menambahkan `sisaKontrakan` akan berkurang karena penulisan `-=` dari `_unitKontrakan` dengan menambahkan `require` makan akan memeriksa juga apakah jumlahKontrakan dapat di tempati jika tersedia di variable `sisaKontrakan` akan mengurangi nilai variable `sisaKontrakan`  dan jika tidak makan nilai dari variable `sisaKontrakan` tetap sama lalu saya juga membuat deklarasi `daftarKontrakan` yang terdiri dari `sisaKontrakan` lalu akan menampilkan nilai dari variable `Bisnis` yang di dalam nya terdiri dari `_unitKontrakan`, `namaPemilik` dan juga `Status.Tersedia` yang di sediakan oleh `enum` saya juga menetapkan fungsi ini hanya bisa di buat/eksekusi oleh `juragan` saja.
### penggunaan `function tarikKontrakan` yang tertulis seperti ini 
```
    function tarikKontrakan(uint _unitKontrakan) public hanyaJuragan {
        require(_unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditarik tidak dapat melebihi jumlah sisa kontrakan yang tersedia.");
        require(sisaKontrakan + _unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditarik menyebabkan jumlah sisa kontrakan melebihi batas maksimum.");
        delete daftarKontrakan[sisaKontrakan + 1];
        sisaKontrakan += _unitKontrakan;
    }
```
pada penggunaan fungsi `tarikKontrakan` ini tidak jauh berbeda dari penggunaan fungsi `tambahPemilik` yang memakai `require` untuk mengeceknya , tetapi kebalikannya dari pada fungsi `tambahPemilik` ini , fungsi `tarikKontrakan` menambahkan `daftarKontrakan` tetapi tetap tidak boleh melebih dari `_unitKontrakan` jika melebihi maka akan gagal , itulang mengapa saya memakai penggunaan `require`
### penggunaan `function cekKontrakan` yang tertulis seperti ini 
```
    function cekKontrakan(uint _nomorKontrakan) public view returns (uint, string memory, string memory, StatusKontrakan) {
        require(_nomorKontrakan >= 0 && _nomorKontrakan < 10, "Nomor kontrakan tidak valid.");
        Bisnis storage kontrakan = daftarKontrakan[_nomorKontrakan];
        require(kontrakan._status == StatusKontrakan.Terisi, "Kontrakan kosong.");
        return (_nomorKontrakan, kontrakan._namaPemilik, bisnis, kontrakan._status);
    }
```
pada fungsi ini sebenarnya hanya untuk mengecek `_nomorKontrakan`,`statusKontrakan` yang dapat di panggil oleh lain 

## Berikut adalah logika dan alur 
Logika dan Alur pada kontrak pintar ini sebagai Kontrak pintar `SimulasiKontrakan` bertujuan untuk menyediakan platform bisnis kontrakan yang dapat diakses melalui blockchain Ethereum. Kontrak pintar "SimulasiKontrakan" merupakan suatu aplikasi yang bertujuan untuk memodelkan bisnis kontrakan. Pada kontrak ini, terdapat suatu pemilik bisnis kontrakan, disebut juragan, yang memiliki daftar kontrakan yang bisa disewakan.

Pada awal kontrak dibuat, variabel sisaKontrakan diinisialisasi dengan nilai 10, yang menunjukkan bahwa masih tersedia 10 unit kontrakan yang bisa disewakan. Selain itu, terdapat variabel bisnis yang menunjukkan jenis bisnis kontrakan yang dijalankan.

Kontrak ini menggunakan modifier hanyaJuragan untuk membatasi hanya pemilik bisnis kontrakan yang dapat menambah dan menghapus pemilik kontrakan pada daftar kontrakan. Modifier ini melakukan pengecekan apakah msg.sender yang melakukan aksi merupakan pemilik bisnis kontrakan, jika bukan, maka aksi tidak diizinkan.

Kontrak ini juga menggunakan struktur Bisnis untuk menyimpan informasi tentang pemilik kontrakan. Informasi yang disimpan mencakup unit kontrakan yang ditempati, nama pemilik, dan status kontrakan.
