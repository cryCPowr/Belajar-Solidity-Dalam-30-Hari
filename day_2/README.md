# Belajar- Solidity-Hari-ke-2
Pada hari ke dua ini kita akan membahas beberapa variable lain nya jadi langsung saja anda bisa melihat di [contracts](https://github.com/cryCPowr/Belajar-Solidity-Dalam-30-Hari/tree/main/day_2/contracts) untuk melihat langsung beberapa versi yang saya buat langsung kita pembahasan

## Kontrak Versi ke 1
Pada Kontrak Versi ini kita akan membahas bagaimana Penggunaan `internal` pada kontrak pintar, secara umum digunakan untuk mengatur aksesibilitas fungsi atau variabel. Ketika sebuah fungsi atau variabel dideklarasikan sebagai `internal`, artinya hanya dapat diakses oleh fungsi-fungsi lain yang didefinisikan dalam kontrak yang sama. Tujuan penggunaan internal adalah untuk membatasi akses ke fungsi atau variabel tertentu dalam kontrak pintar.
### Mendeklarasikan kontrak pintar, anda bisa melihat nya pada tulisan :
```
  contract Agen
```
pada bagian mendeklarasikan kontrak pintar , saya mencoba mendeklrasikan dengan nama `Agen`

### Menggunakan variable `uint256` untuk mendeklarasikan `jumlahBarang` anda bisa melihat nya pada tulisan :
```
  uint256 public jumlahBarang;
```
pada konteks ini saya menggunakan tipe data `uint256` untuk variable `jumlahBarang` , saya menggunakan `uint256` karena pada saat `jumlahBarang` ini di panggil hanya dapat menerima bilangan bulat atau bisa di bilang 256 bit (32 byte).

### Menggunakan variable `mapping` anda bisa melihat nya pada tulisan :
```
mapping(uint => Barang) public cekBarang;
```
pada konteks ini saya menggunakan tipe data `mapping` untuk pemetaan tipe data `uint` untuk variable `Barang` , serta membuat kunci `public` agar memungkinkan semua orang dapat mengaksesnya pada variable `cekBarang` yang berarti nilai `uint` dapat di akses oleh siapa saja
### Menggunakan `struct` anda bisa melihat nya pada tulisan :
```
struct Barang {
                uint _no;
                  string _namaBarang;
                  string _jenisBarang;
              }

```
pada penggunaan `struct ini saya menambahkan struktur atau parameter yang memberi tahu bahwa variable `_no` itu menggunakan tipe data `uint` yang berarti hanya dapat menyimpan/menerima bilangan bulat dan deklrasi `_namaBarang` dan `_jenisBarang` menggunakan tipe data `string` yang berarti hanya dapat menyimpan/menerima teks

### penulisan fungsi `tambahBarang` anda bisa melihat nya pada tulisan :
```
     function tambahBarang(string memory _namaBarang, string memory _jenisBarang) public {
         totalBarang();
         cekBarang[jumlahBarang] = Barang(jumlahBarang, _namaBarang, _jenisBarang);
    }
```
pada penulisan `function tambahBarang` saya membuat deklarasi bahwa di dalam `function tambahBarang` ini terdiri 2 parameter dari `_namaBarang` dan `_jenisBarang` yang menggunakan tipe data `string` serta membuat kunci `public` agar memungkin semua orang dapat mengakses fungsi tersebut, nah di saat fungsi `tambahBarang` itu di panggil dia akan membuat fungsi lain yaitu `totalBarang` yang di mana di dalam konteks ini akan menyimpan data barang yang di buat saat memanggil fungsi `tambahBarang` , setelah panggilan yang membuat fungsi `totalBarang` itu berjalan maka fungsi tersebut akan kembali membuat/memanggil fungsi lain yaitu `cekBarang` dengan menggunakan kunci `jumlahBarang` yang di mana akan di deklarasikan sebagai `Barang` yang terdiri dari 3 parameter yaitu `jumlahBarang` , `_namaBarang` dan `_jenisBarang`

### Penulisan fungsi `totalBarang` yang menggunakan kata kunci `internal` anda bisa melihat nya pada tulisan :
```
     function totalBarang() internal {
         jumlahBarang += 1;     
 }
```
pada fungsi `totalBarang` yang di mana menggunakan kata kunci `internal` adalah di mana fungsi ini hanya dapat di akses/di panggil secara internal yaitu hanya dapat di panggil oleh fungsi lain yang ada di dalam kontrak tersebut dan tidak bisa di panggil oleh luar kontrak , lalu di saat fungsi `totalBarang` ini di panggil maka akan memanggil variable `jumlahBarang` yang di mana dapat memodifikasi nilai dari variable `jumlahBarang` tersebut.

## Kontrak Versi 2
kontrak versi ke 2 ini akan membahas bagaimana penggunaan dan menjalankan fungsi `modifier`
