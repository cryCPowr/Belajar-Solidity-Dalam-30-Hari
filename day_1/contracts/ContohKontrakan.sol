// pada kontrak pintar ini kita akan membuat skenario bagaimana bisnis kontrakan ini berjalan dengan bahasa solidity
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract SimulasiKontrakan {
    address public juragan;
    enum StatusKontrakan { Kosong, Terisi }
    uint256 public sisaKontrakan = 10;
    string bisnis;
    mapping (uint => Bisnis) public daftarKontrakan;

    constructor() {
        bisnis = "Bisnis Kontrakan";
        juragan = msg.sender;
    }

    modifier hanyaJuragan() {
        require(msg.sender == juragan, "Hanya juragan yang berwenang disini");
        _;
    }

    struct Bisnis {
        uint _unitKontrakan;
        string _namaPemilik;
        StatusKontrakan _status;
    }

    function bisnisApa() public view returns (string memory) {
        return bisnis;
    }

    function tambahPemilik(string memory _namaPemilik, uint _unitKontrakan) public hanyaJuragan {
        require(_unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditempati melebihi jumlah sisa kontrakan yang tersedia.");
        sisaKontrakan -= _unitKontrakan;
        daftarKontrakan[sisaKontrakan] = Bisnis(_unitKontrakan, _namaPemilik, StatusKontrakan.Terisi);
    }

    function tarikKontrakan(uint _unitKontrakan) public hanyaJuragan {
        require(_unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditarik tidak dapat melebihi jumlah sisa kontrakan yang tersedia.");
        require(sisaKontrakan + _unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditarik menyebabkan jumlah sisa kontrakan melebihi batas maksimum.");
        delete daftarKontrakan[sisaKontrakan + 1];
        sisaKontrakan += _unitKontrakan;
    }
    
    function cekKontrakan(uint _nomorKontrakan) public view returns (uint, string memory, string memory, StatusKontrakan) {
        require(_nomorKontrakan >= 0 && _nomorKontrakan < 10, "Nomor kontrakan tidak valid.");
        Bisnis storage kontrakan = daftarKontrakan[_nomorKontrakan];
        require(kontrakan._status == StatusKontrakan.Terisi, "Kontrakan kosong.");
        return (_nomorKontrakan, kontrakan._namaPemilik, bisnis, kontrakan._status);
    }

}
