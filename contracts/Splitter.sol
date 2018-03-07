// minimal Splitter contract
pragma solidity ^0.4.17;

contract Splitter {
    address public alice;
    address public bob;
    address public carol;

    function Splitter(address addressOfBob, address addressOfCarol) public payable {
        assert(addressOfBob != address(0));
        assert(addressOfCarol != address(0));
        alice = msg.sender;
        bob = addressOfBob;
        carol = addressOfCarol;
    }

    function SplitEther() public payable returns (bool) {
        require(msg.sender == alice);         // only alice can send to this contract
        require(msg.value > 0);               // there must be some ether to split
        uint share = msg.value / 2;
        bob.transfer(share);
        carol.transfer(share);
        return true;
    }

    function getContractBalance() public view returns (uint) {
         return this.balance;                 // should be 0 as any ether sent to it will be transferred to bob & carol
    }

    function getUserBalance(address person) public view returns (uint) {
         return person.balance;
    }
}
