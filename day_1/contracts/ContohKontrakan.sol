// pada kontrak pintar ini kita akan membuat skenario bagaimana bisnis kontrakan ini berjalan dengan bahasa solidity
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract SimulasiKontrakan {
        uint256 public sisaKontrakan = 10;
        string bisnis;
        mapping (uint => Bisnis) public cekKontrakan;
                    constructor() {
                        bisnis = "Bisnis Kontrakan";
                    }
                    struct Bisnis{
                        uint _unitKontrakan;
                        string _namaPemilik;
                    }
        function bisnisApa() public view returns (string memory){
            return bisnis;
        }
        function tambahPemilik(string memory _namaPemilik, uint _unitKontrakan) public {
            require(_unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditempati melebihi jumlah sisa kontrakan yang tersedia.");
            sisaKontrakan -= _unitKontrakan;
            cekKontrakan[sisaKontrakan] = Bisnis(_unitKontrakan, _namaPemilik);
        }
        function tarikKontrakan(uint _unitKontrakan) public {
        require(_unitKontrakan <= sisaKontrakan, "Jumlah unit kontrakan yang akan ditarik tidak dapat melebihi jumlah sisa kontrakan yang tersedia.");
        delete cekKontrakan[_unitKontrakan];
        sisaKontrakan += _unitKontrakan;
        }
}
