pragma solidity ^0.4.17;

contract ChallengeOne {
    address public owner;
    string public name;
    uint16 private age;
    
    function ChallengeOne() public{
        owner = msg.sender;
    }
    
    function setName(string _name) public onlyOwner{
        name = _name;
    }
    function setAge(uint16 _age) public onlyOwner{
        age = _age;
    }
    
    function getAge() returns (uint16){
        return age;
    }
    function getName() returns (string){
        return name;
    }
    
    modifier onlyOwner{
        require(msg.sender==owner);
        _;
    }
    
    function terminate() onlyOwner {
        selfdestruct(owner);
    }
  
}
//I'm cool with mine in a video
