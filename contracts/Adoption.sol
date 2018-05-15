pragma solidity ^0.4.17;

contract Adoption {
	address[16] public adopters;
	function adopt(uint petId) public returns (uint) {
		require(petId >= 0 && petId <= 15);
		adopters[petId] = msg.sender;
		return petId;
	}
	function getAdopters() public returns (address[16]) {
		return adopters;
	}
}
/* The types of both th e function parameters and output must be specified.
In this case, we'll be taking in a petId (integer) and returning an integer */
/* require() statement to ensure the ID is within the range.*/
/* The address of the person or smart contract who claled this function
is denoted by msg.sender */
