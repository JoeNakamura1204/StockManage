pragma solidity ^0.4.24;

contract HelloWorld {
    string public greeting;
    address public owner;

    function HelloWorld2(string memory _greeting) public {
        greeting =  _greeting;
        owner = msg.sender;
    }

    function say() public view returns (string memory) {
        return greeting;
    }

    function getBalance() public view returns (uint balance) {
        return owner.balance;
    }

    function getAddress() public view returns (address) {
        return owner;
    }
}
