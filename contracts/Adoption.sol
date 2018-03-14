pragma solidity ^0.4.2;
/**
 * The contractName contract does this and that...
 */
contract Adoption {
	address[16] public adopters;
	function adopt (uint petID) public returns (uint){
		require (petID >= 0 && petID<=15);
		adopters[petID] = msg.sender;
		return petID;
	}	

	function getAdopters() public view returns (address[16]) {
		return adopters;
	}
	
}
