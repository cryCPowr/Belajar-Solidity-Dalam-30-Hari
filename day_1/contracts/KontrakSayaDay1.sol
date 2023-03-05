// Versi 1
// Hari Pertama - Pembuatan Kontrak Pintar Sederhana Versi 1 ( membahas untuk mengatur Fungsi/function )
// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract KontrakSayaV1 {
    string nilai;

    constructor() {
        nilai = "nilaiSaya";
    }

    function ambilNilai() public view returns (string memory) {
        return nilai;
    }

    function aturNilai(string memory _nilai) public {
        nilai = _nilai;
    }
}

// Versi 2
// Hari Pertama - Pembuatan Kontrak Pintar Sederhana Versi 2  (membahas Varian State)
pragma solidity ^0.8.18;

contract KontrakSayaV2 {
    string public stringNilai = "nilaiSaya";
    bool public booleanSaya = true;
    int public intSaya = -1;
    uint public uintSaya = 1;
    uint8 public uint8Saya = 8;
    uint256 public uint256Saya = 9999;
}


// versi 3
// Hari Pertama - Pembuatan Kontrak Pintar Sederhana Versi 3 (membahas enum)
pragma solidity ^0.8.18;

contract KontrakSayaV3 {
    enum Perjalan { Menunggu, Siap, Berjalan }
    Perjalan public perjalanan;

    constructor() {
        perjalanan = Perjalan.Menunggu;
    }

    function silahkanBerjalan() public {
        perjalanan = Perjalan.Berjalan;
    }

    function sudahBerjalan() public view returns(bool) {
        return perjalanan == Perjalan.Berjalan;
    }
}

// versi 4
// Hari Pertama - Pembuatan Kontrak Pintar Sederhana Versi 4 (membahas struct)
pragma solidity ^0.8.18;

contract KontrakSayaV4 {
    Orang[] public kelompok;

    uint256 public jumlahKelompok;

    struct Orang {
        string _namaDepan;
        string _namaBelakang;
    }

    function tambahOrang(string memory _namaDepan, string memory _namaBelakang) public {
        kelompok.push(Orang(_namaDepan, _namaBelakang));
        jumlahKelompok += 1;
    }
}

// versi 5
// Hari Pertama - Pembuatan Kontrak Pintar Sederhana Versi 5 (membahas mapping)
pragma solidity ^0.8.18;

contract KontrakSayaV5 {
    uint256 public jumlahKelompok = 0;
    mapping(uint => Orang) public Kelompok;

    struct Orang {
        uint _id;
        string _namaDepan;
        string _namaBelakang;
    }

    function tambahOrang(string memory _namaDepan, string memory _namaBelakang) public {
        jumlahKelompok += 1;
        Kelompok[jumlahKelompok] = Orang(jumlahKelompok, _namaDepan, _namaBelakang);
    }
    function hapusOrang(uint _id) public {
        delete Kelompok[_id];
        jumlahKelompok -= 1;
    }
}