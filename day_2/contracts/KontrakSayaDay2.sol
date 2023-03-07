// versi pertama membahas soal `internal`
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

contract Agen {
             uint256 public jumlahBarang;
             mapping(uint => Barang) public cekBarang;

             struct Barang {
                 uint _no;
                 string _namaBarang;
                 string _jenisBarang;
               }

    function tambahBarang(string memory _namaBarang, string memory _jenisBarang) public {
        totalBarang();
        cekBarang[jumlahBarang] = Barang(jumlahBarang, _namaBarang, _jenisBarang);
    }

    function totalBarang() internal {
        jumlahBarang += 1;
    }
}

// versi ke dua membahas soal `function modifier`
pragma solidity 0.8.19;

contract Agen {
    uint256 public jumlahBarang;
    mapping(uint => Barang) public cekBarang;
    address public bos;

    modifier bosAgen(){
        require(msg.sender == bos);
        _;
    }

    struct Barang {
       uint _no;
       string _namaBarang;
       string _jenisBarang;
    }

    constructor() {
        bos = msg.sender;
    }

    function tambahBarang(string memory _namaBarang, string memory _jenisBarang) public bosAgen {
        totalBarang();
        cekBarang[jumlahBarang] = Barang(jumlahBarang, _namaBarang, _jenisBarang);
    }

    function totalBarang() internal {
        jumlahBarang += 1;
    }
}

// versi ke tiga yang membahas `Time` pada kontrak pintar
pragma solidity 0.8.19;

contract Agen {
    uint256 public jumlahBarang;
    mapping(uint => Barang) public cekBarang;
    // pada bagian "1678180177" adalah sebuah epoch waktu yang anda bisa pelajari di https://www.epochconverter.com/
    uint256 waktuBuka = 1678180177;

    modifier bukaAgen(){
        require(block.timestamp >= waktuBuka);
        _;
    }

    struct Barang {
       uint _no;
       string _namaBarang;
       string _jenisBarang;
    }


    function tambahBarang(string memory _namaBarang, string memory _jenisBarang) public bukaAgen {
        totalBarang();
        cekBarang[jumlahBarang] = Barang(jumlahBarang, _namaBarang, _jenisBarang);
    }

    function totalBarang() internal {
        jumlahBarang += 1;
    }
}