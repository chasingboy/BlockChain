pragma solidity ^0.6.0;

contract Attack{
    
    bytes public payload;
    uint256 public balance;
    bytes public data;
    
    function execCall(address _addr) public {
            _addr.call(payload);
    }
    
    function setPayload(bytes memory x) public {
        payload = x;
    }
    
    function abiEncBool(string memory funcName, bool x) public{
        payload = abi.encodeWithSignature(funcName, x);
    }
    
    function abiEncString(string memory funcName, string memory x) public {
        payload = abi.encodeWithSignature(funcName, x);
    }
    
    function abiEncNumber(string memory funcName, uint256 x) public{
        payload = abi.encodeWithSignature(funcName, x);
    }

    function abiEncAddress(string memory funcName, address x) public{
        payload = abi.encodeWithSignature(funcName, x);
    }

    function abiEncBytes(string memory funcName, bytes memory x) public{
        payload = abi.encodeWithSignature(funcName, x);
    }

    function abiEncFunc(string memory funcName) public {
        payload = abi.encodeWithSignature(funcName);
    }
    
    fallback() external payable{
        data = msg.data;
    }
    
    receive() external payable{
        
    }
    
    function getBalance(address payable _addr) public{
        balance = _addr.balance;
    }
    
}
