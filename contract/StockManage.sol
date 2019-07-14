pragma solidity ^0.5.0;

contract ManageDocument {

    uint num = 0;

    struct DocumentHistory {
        uint documentId;
        string metaData;
        bool edited;
    }

    DocumentHistory[] public DocumentHistories;

    mapping (uint => address) public DocumentsToCompany;

    mapping (address => uint) public CompanyDocumentCount;

    event completeMined(string _metadata);

    function CreateDocumentsHistory(string memory _metadata) public{
        uint id = DocumentHistories.push(DocumentHistory(num, _metadata, true) ) -1;
        DocumentsToCompany[id] = msg.sender;
        CompanyDocumentCount[msg.sender]++;
        num++;
        emit completeMined(_metadata);
    }

    function getDocumentsByCompany(address _owner) external view returns(uint[] memory){
        uint[] memory result = new uint[](CompanyDocumentCount[_owner]);
        uint counter = 0;
        for (uint i= 0; i < DocumentHistories.length; i++){
            if(DocumentsToCompany[i] == _owner){
                result[counter] = i;
                counter++;
            }
        }
        return result;
    }

}
