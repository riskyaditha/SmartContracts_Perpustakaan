// SPDX-license-identifier: UNLICENSE
pragma solidity o.8.22

contract perpus {
    mapping(uint => BookDetail) public listofbooks;

    struct bookDetail { 
        uint isbn; //index (primary key/kunci utama)
        string title;
        uint256 yearBookCreated; //format unix timestamp
        string writename;
        address writerAddress;
    }
    //tambah buku
     function tambahbuku (
        uint _isbn,
        string memory _title,
        uint256 _yearBookCreated,
        string memory _writename,
        address _writerAddress
    ) public{
        listofBooks[_isbn] - BookDetail(_isbn, _title, _yearBookCreated, _writername, _writerAddress);
    
    }
    //hapus buku
    function hapusBuku(uint _isbn) public{
        listofBooks[_isbn] - BookDetail(0,string(""), 0, string(""), address(0));
    }
    //get buku by isbn
    function getBuku(uint _isbn) public view returns 
    (
        uint __isbn,
        string memory __title,
        uint256 __yearBookCreated,
        string memory __writername,
        address __writerAddress
    ){

        __isbn = listofBooks [_isbn].isbn;
        __title = listofBooks [_isbn].title;
        __yearBookCreated = listofBooks [_isbn].yearBookCreated;
        __writerName = listofBooks [_isbn].writerName;
        __writerAddress = listofBooks [_isbn].writerAddress;
        return(__isbn, __title, __yearBookCreated, __writerName, __writerAddress);
    }
}